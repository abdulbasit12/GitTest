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
            var area = (from x in db.LawnOwners
                        where x.Area != null
                        orderby x.Area
                        select new { x.Area }).Distinct();

            DropDownList2.DataSource = area;
            DropDownList2.DataTextField = "Area";
            DropDownList2.DataValueField = "Area";
            DropDownList2.DataBind();
            DropDownList1.Items.Insert(0, "ALL");
            DropDownList1.Items.Insert(1, "Banquet");
            DropDownList1.Items.Insert(2, "Lawn");
            DropDownList2.Items.Insert(0, "ALL");
            //                TownDropDown.Items.Insert(0, "ALL");
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
            String dd = DropDownList2.SelectedValue; ;

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
        if (Convert.ToInt32(Capacity.Text) > 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('You have selected OLD Date or Current Date. Please Select tomorrow or Onward Date');", true);
        }
        else
        {

            var Laww = from x in db.LawnOwners
                       where x.Area.Equals(DropDownList2.SelectedValue) //|| x.SeatingCapacity.Equals(Convert.ToString( SearchCapacity.Value))
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
        string Type = string.Empty;
        string area = string.Empty;
        int capacity = 0;
        int mincapacity = 0;

        if (DropDownList2.SelectedIndex != 0)
        {
            area = DropDownList2.SelectedValue.ToString();
        }

        if (DropDownList1.SelectedIndex != 0)
        {
            Type = DropDownList1.SelectedValue;
        }
        if (Capacity.Text != "")
        {
            capacity = Convert.ToInt32(Capacity.Text);
        }
        if (Min_Capacity.Text != "")
        {
            mincapacity = Convert.ToInt32(Min_Capacity.Text);
        }
        //if ((Capacity.Text != "" || Min_Capacity.Text != "") && (Convert.ToInt32((Capacity.Text)) <= 0 || mincapacity <= 0))
        //{
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please select valid options');", true);
        //}
        var Laww = from x in db.LawnOwners
                   select x.Id;

        if (capacity != 0)
        {

            Laww = from x in db.LawnOwners
                       where x.LawnName.Contains(SearchAreaText.Text) && Convert.ToInt32(x.SeatingCapacity) <= capacity && x.LawnName.Contains(Type) && x.Area.Contains(area) && Convert.ToInt32(x.SeatingCapacity) >= mincapacity
                       select x.Id;
        }

        else {
             Laww = from x in db.LawnOwners
                       where x.LawnName.Contains(SearchAreaText.Text) && x.LawnName.Contains(Type) && x.Area.Contains(area) && Convert.ToInt32(x.SeatingCapacity) >= mincapacity
                       select x.Id;
        
        }



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