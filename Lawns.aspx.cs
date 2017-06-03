using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lawns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FYPDataContext db = new FYPDataContext();
            Image img = new Image();
            
            var Laww = from x in db.LawnOwners
                      // where x.Area.Equals(SearchArea.Text)
                       select x.Id;

            //if (SearchArea != null)
            //{
            //     Laww = from x in db.LawnOwners
            //               where x.Area.Equals(Convert.ToString( SearchArea.Text))
            //               select x.Id;
            //}
            //else {
            //     Laww = from x in db.LawnOwners
            //            where x.SeatingCapacity.Equals(SearchCapacity.Text)
            //               select x.Id;
            
            //}
            String dd = SearchArea.DataValueField;

            var CoverImage = from x in db.Images
                             where x.Name.Equals("Cover")
                             select x.Id;


            var Imggg = (from x in db.Images
                         join y in db.LawnOwners on x.LawnID equals y.Id
                         where Laww.Contains(Convert.ToInt32(x.LawnID)) &&
                             //where x.Name.Equals(Convert.ToInt32("Cover".ToString()))
                      CoverImage.Contains(x.Id)
                         select new { x.Uimg, y.LawnName, y.SeatingCapacity, y.Address });


           

            Repeater1.DataSource = Imggg;
            Repeater1.DataBind();
        
        
        
        }
    }

    protected void Unnamed2_Click(object sender, EventArgs e)
    {

        FYPDataContext db = new FYPDataContext();
        Image img = new Image();
        if (Convert.ToInt32(Capacity.Text) > 0) {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('You have selected OLD Date or Current Date. Please Select tomorrow or Onward Date');", true);
        }
        else
        {

            var Laww = from x in db.LawnOwners
                       where x.Area.Equals(SearchArea.Value) //|| x.SeatingCapacity.Equals(Convert.ToString( SearchCapacity.Value))
                       select x.Id;


            var CoverImage = from x in db.Images
                             where x.Name.Equals("Cover")
                             select x.Id;


            var Imggg = (from x in db.Images
                         join y in db.LawnOwners on x.LawnID equals y.Id
                         where Laww.Contains(Convert.ToInt32(x.LawnID)) &&
                             //where x.Name.Equals(Convert.ToInt32("Cover".ToString()))
                      CoverImage.Contains(x.Id)
                         select new { x.Uimg, y.LawnName, y.SeatingCapacity, y.Address });




            Repeater1.DataSource = Imggg;
            Repeater1.DataBind();
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        RepeaterItem itemToBook = e.Item;
        string ssss = itemToBook.UniqueID.ToString();
        Session["Repeater"] = ssss.ToString();
        Response.Redirect("BookingPage.aspx");


    }
    protected void Unnamed2_Click1(object sender, EventArgs e)
    {
        FYPDataContext db = new FYPDataContext();
        Image img = new Image();
        string text = Capacity.Text;

        if (Capacity.Text != "" && Convert.ToInt32((Capacity.Text)) <= 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please select valid options');", true);
        }
        else
        {
            var Laww = from x in db.LawnOwners
                       where x.LawnName.Contains(SearchAreaText.Text) || Convert.ToInt32(x.SeatingCapacity )>= Convert.ToInt32(Capacity.Text)
                       select x.Id;



            var CoverImage = from x in db.Images
                             where x.Name.Equals("Cover")
                             select x.Id;


            var Imggg = (from x in db.Images
                         join y in db.LawnOwners on x.LawnID equals y.Id
                         where Laww.Contains(Convert.ToInt32(x.LawnID)) &&
                             //where x.Name.Equals(Convert.ToInt32("Cover".ToString()))
                      CoverImage.Contains(x.Id)
                         select new { x.Uimg, y.LawnName, y.SeatingCapacity, y.Address });




            Repeater1.DataSource = Imggg;
            Repeater1.DataBind();
            //Capacity.Text = SearchArea.Value = "";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void SSLAwn_Click(object sender, EventArgs e)
    {
        
        RepeaterItem item = (sender as Button).Parent as RepeaterItem;
        string ADD = (item.FindControl("IDLAWN") as Label).Text;
        Session["CheckAvail"] = ADD.ToString();
        Response.Redirect("LawnDetails.aspx");
    }

}