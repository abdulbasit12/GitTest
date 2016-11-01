using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSignin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            FYPDataContext db = new FYPDataContext();


            var userresult = (from x in db.Users
                              where x.Name.Equals(txtSignInName.Text) & x.Password.Equals(txtpasswordSignIn.Text)
                              select x).FirstOrDefault();

            var Vendor_result = (from x in db.LawnOwners
                                 where x.LawnName.Equals(txtSignInName.Text) & x.Password.Equals(txtpasswordSignIn.Text)
                                 select x).FirstOrDefault();


            if (userresult != null)
            {

                Response.Redirect("index.aspx");

            }


            if (Vendor_result != null)
            {

                Response.Redirect("imageUpload.aspx");

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('UserName or Password is Incorrect');", true);

            }
        }
    }
}


