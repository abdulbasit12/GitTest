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

        User us = new User();
        var immmm = (from q in db.LawnOwners
                     where q.Address.Equals(Session["Address"].ToString())
                     select q.Id).FirstOrDefault();
        var imageresult = from x in db.Images
                          where x.Id.Equals( Convert.ToInt32(immmm))
                          select x;


        GridView2.DataSource = imageresult;
        GridView2.DataBind();
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        FYPDataContext db = new FYPDataContext();
        Image img = new Image();

        User us = new User();



        
        var imageresult = from x in db.Images
                         select x ;

        GridView2.DataSource=imageresult;
        GridView2.DataBind();
        

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FYPDataContext db = new FYPDataContext();
        Image img = new Image();
        GridViewRow row = (GridViewRow)GridView2.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblImgId");
        Label lblDeleteImageName = (Label)row.FindControl("lblImageName");
        var gg = GridView2.DataSourceID[e.RowIndex];
        var res = (from cc in db.Images
                   where cc.Id.Equals(Convert.ToInt32(GridView2.DataSourceID[e.RowIndex]))
                   select cc).First();
        db.Images.DeleteOnSubmit(res);
        db.SubmitChanges();
        
    }
}