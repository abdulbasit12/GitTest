using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;



public partial class ImageShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FYPDataContext db = new FYPDataContext();

        Image img = new Image();

        var imageresult = from x in db.Images
                          where x.LawnID.Equals(Convert.ToInt32(Session["VVID"]))
                          select x;


        GridView1.DataSource = imageresult;
        GridView1.DataBind();


        
    }
  




   
    protected void Button1_Click1(object sender, EventArgs e)
    {
       
       


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}