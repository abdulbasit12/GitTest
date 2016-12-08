using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        
        FYPDataContext db=new FYPDataContext();
        Image img=new Image();
    

        
        var Laww=from x in db.LawnOwners
                 where x.Area.Equals(SearchArea.Text)
                 select x.Id;


        var CoverImage = from x in db.Images
                         where x.Name.Equals("Cover")
                         select x.Id;


        var Imggg = (from x in db.Images
                     join y in db.LawnOwners on x.LawnID equals y.Id
                     where Laww.Contains(Convert.ToInt32(x.LawnID))&&
                  //where x.Name.Equals(Convert.ToInt32("Cover".ToString()))
                  CoverImage.Contains(x.Id)
                     select new  { x.Uimg, y.LawnName, y.SeatingCapacity, y.Address });


     

       GridView2.DataSource=Imggg;
       GridView2.DataBind();

       
        
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select") {

            int r = Convert.ToInt32(e.CommandArgument);
            Session["Booking"] = GridView2.Rows[r].Cells[3].Text;
            Session["Delete"] = GridView2.Rows[r].Cells[5].Text;

            Response.Redirect("Booking.aspx"); 
        }
    
    
    }
    

}