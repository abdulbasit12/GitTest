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
            
        string asd = "";
        if (!Page.IsPostBack)
        {
            Session["PackageID"] = null; 
            if (!string.IsNullOrEmpty(Request.QueryString["page"]))
            {
                asd = Request.QueryString["page"].ToString();
            }

            FYPDataContext db = new FYPDataContext();

            var userresult = (from x in db.Packages
                              where x.EventType.Contains(asd.ToString())
                              select new { x.PackageId, x.PackageRate });

            var userresult1 = (from x in db.Packages
                              where x.EventType.Contains(asd.ToString())
                              select new { x.PackageId, x.PackageRate }).First();
            
            var itemresult = from x in db.PackagesItems
                             join y in db.Items on x.ItemID equals y.Id
                             where x.PackagesID.Equals(userresult1.PackageId.ToString())
                             select new { y.Items,x.PackagesID };


            Session["PackageID"] = (userresult1.PackageId.ToString());


            Repeater1.DataSource = userresult;


            Repeater1.DataBind();

            repeater2.DataSource = itemresult;
            repeater2.DataBind();
                      
           
        }


    }
    public override void VerifyRenderingInServerForm(Control control)
    {
       
    }
    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        
        Button Packages = (Button)e.Item.FindControl("Package");
        Packages.Text = Packages.Text + coo;
        Label PackageRate = (Label)e.Item.FindControl("PackageRate");
        PackageRate.Text = "Rs: " + PackageRate.Text + "/- Per Head";

        //Label Laa = (Label)e.Item.FindControl("Package");
        //Label Laaa = (Label)e.Item.FindControl("Label177");
        //Laaa.Text = "RS " + Laaa.Text + " Per Head";
        ////    Label la = (System.Web.UI.WebControls.Label)Repeater1.FindControl("Package11");
        //Laa.Text = "Packages " + coo;
        coo = coo + 1;
    }
    protected void Package_Click(object sender, EventArgs e)
    {
       
        RepeaterItem item = (sender as Button).Parent as RepeaterItem;
     string   ADD = (item.FindControl("PackageID") as Label).Text;
     Session["PackageID"] = ADD.ToString();
        PackageInformation.Text = (item.FindControl("Package") as Button).Text;
        PackageInformation.Visible = true;
        FYPDataContext db = new FYPDataContext();
     
        var ItemResult = from x in db.PackagesItems
                         join y in db.Items on x.ItemID equals y.Id
                         where x.PackagesID.Equals(ADD)
                         select new { y.Items,x.PackagesID };
        repeater2.DataSource = ItemResult;
        repeater2.DataBind();
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        string Pack = Session["PackageID"].ToString();

    }

    protected void repeater2_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}