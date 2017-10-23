using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class policy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FYPDataContext db = new FYPDataContext();
            Caterer cat = new Caterer();
            AllUser au = new AllUser();
            int caterid = Convert.ToInt32(Session["CaterID"]);
            var checkuser = (from x in db.Items
                             where x.CaterID == 8
                             select x.Items);
            var checkuser1 = (from x in db.Items
                              where x.CaterID == 8
                              select new { x.Items, x.Id });

            DropDownCheckBoxes1.DataSource = checkuser1;
            DropDownCheckBoxes1.DataTextField = "Items";
            DropDownCheckBoxes1.DataValueField = "Id";

            DropDownCheckBoxes1.DataBind();
        }
    }
    protected void Next_Click(object sender, EventArgs e)
    {

        CopyToDataTable();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('package is added sucessfully');", true);
        Response.Redirect("Index.aspx");
  


    }

    protected void More_Click(object sender, EventArgs e)
    {
        CopyToDataTable();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('package is added sucessfully. You can add More Packages');", true);
        Page_Load();
    }

    private void Page_Load()
    {
        throw new NotImplementedException();
    }
    protected void Skip_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index");
    }

    protected void CopyToDataTable()
    {

        FYPDataContext db = new FYPDataContext();
        if (Page.IsValid)
        {
            Package package = new Package();
            package.EventType = EventType.SelectedValue.ToString();
            package.CaterID = Convert.ToInt32(Session["CaterID"]);
            package.Active = 1;
            package.PackageRate = Convert.ToInt16(packageprice.Text);
            package.ValidforPerson = Convert.ToInt16(Persons.Text);
            package.DiscountRate = Convert.ToInt16(Discount.Text);
            package.DisCountPerson = Convert.ToInt16(DiscountPerson.Text);
            db.Packages.InsertOnSubmit(package);
            db.SubmitChanges();
            var packageIds = (from x in db.Packages
                              select x.PackageId).Max();
            int fff = Convert.ToInt16(packageIds);

            foreach (ListItem item in DropDownCheckBoxes1.Items)
            {

                if (item.Selected)
                {
                    PackagesItem PI = new PackagesItem();
                    PI.ItemID = Convert.ToInt16(item.Value);
                    PI.PackagesID = Convert.ToInt16(packageIds);
                    db.PackagesItems.InsertOnSubmit(PI);
                    db.SubmitChanges();

                }
            }
        }
    }
}