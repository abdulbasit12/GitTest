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

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        FYPDataContext db = new FYPDataContext();
        Image img = new Image();
        


        var imageresult = from x in db.Images
                         select x ;

        GridView1.DataSource=imageresult;
        GridView1.DataBind();
        

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FYPDataContext db = new FYPDataContext();
        Image img = new Image();
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblImgId");
        Label lblDeleteImageName = (Label)row.FindControl("lblImageName");
        var gg = GridView1.DataSourceID[e.RowIndex];
        var res = (from cc in db.Images
                   where cc.Id.Equals(Convert.ToInt32(GridView1.DataSourceID[e.RowIndex]))
                   select cc).First();
        db.Images.DeleteOnSubmit(res);
        db.SubmitChanges();
        
    }
}