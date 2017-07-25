using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class catering : System.Web.UI.Page
{
    public int coo = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        //string asd="";
        //if (!string.IsNullOrEmpty(Request.QueryString["page"]))
        //{
        //    asd = Request.QueryString["page"].ToString();
        //}
        //FYPDataContext db = new FYPDataContext();

        //var userresult = (from x in db.Packages
        //                  join y in db.PackagesItems on x.PackageId equals y.PackagesID
        //                  join z in db.Items on y.ItemID equals z.Id
        //                where x.EventType.Contains(asd.ToString())
                        
        //                  select new { x.PackageId, y.ItemID, z.Items });

        ////var Imggg = (from x in db.Images
        ////             join y in db.LawnOwners on x.LawnID equals y.Id
        ////             where Laww.Contains(Convert.ToInt32(x.LawnID)) &&
        ////                 //where x.Name.Equals(Convert.ToInt32("Cover".ToString()))
        ////          CoverImage.Contains(x.Id)
        ////             select new { x.Uimg, y.LawnName, y.SeatingCapacity, y.Address });

        ////var userresult = (from x in db.AllUsers
                         
        ////                  select new{x.User_Role,x.Email_ID,x.Id});


        //Repeater1.DataSource = userresult;
        //Repeater1.DataBind();

        string asd = "";
        if (!Page.IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["page"]))
            {
                asd = Request.QueryString["page"].ToString();
            }

            FYPDataContext db = new FYPDataContext();

            var userresult = (from x in db.Packages
                              where x.EventType.Contains(asd.ToString())
                              select new { x.PackageId, x.PackageRate });





            Repeater1.DataSource = userresult;


            Repeater1.DataBind();
           
        }


    }
    public override void VerifyRenderingInServerForm(Control control)
    {
       
    }
    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Label Laa = (Label)e.Item.FindControl("Package");
        Label Laaa = (Label)e.Item.FindControl("Label177");
        Laaa.Text = "RS " + Laaa.Text + " Per Head";
        //    Label la = (System.Web.UI.WebControls.Label)Repeater1.FindControl("Package11");
        Laa.Text = "Packages " + coo;
        coo = coo + 1;
    }
}