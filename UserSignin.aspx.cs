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
        if (Session["SignInUSerCheck"] != null)
        {
            Code.Visible = true;
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please Enter the Code below for First Time Login to Verification');", true);
            signin_error.Attributes.Add("style", "display:block");
            signin_error.Attributes.Add("class", "alert alert-danger alert fade in alert-dismissable");
            signin_error.Text = "Please Enter the Code below for First Time Login to Verification"+signin_error.Text;
        }
       
    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            FYPDataContext db = new FYPDataContext();
            var checkcode = (from y in db.VerifyingCodes
                             select y).FirstOrDefault();

            
            if (Session["SignInUSerCheck"] != null) {
                checkcode = (from x in db.VerifyingCodes
                             where x.Code.Equals(CodePass.Text) && x.EmailID.Equals(txtSignInName.Text)
                             select x).FirstOrDefault();

            }


            var userresult = (from x in db.AllUsers
                              where x.Email_ID.Equals(txtSignInName.Text) & x.Password.Equals(txtpasswordSignIn.Text)
                              select x).FirstOrDefault();

            //var Vendor_result = (from x in db.LawnOwners
            //                     where x.LawnName.Equals(txtSignInName.Text) & x.Password.Equals(txtpasswordSignIn.Text)
            //                     select x).FirstOrDefault();


            if (userresult == null || checkcode == null)
            {
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('UserName or Password is Incorrect');", true);
                signin_error.Attributes.Add("style", "display:block");
                signin_error.Attributes.Add("class", "alert alert-danger alert fade in alert-dismissable");
                signin_error.Text = "UserName or Password is Incorrect"+signin_error.Text;

            }
           
            else if (userresult.User_Role != "Vendor")
            {
                var userresult1 = (from x in db.Users
                                  where x.Email.Equals(txtSignInName.Text) 
                                  select x).FirstOrDefault();
                

                Session["BookingUser"] = userresult.Id;
                Session["Username"] = userresult1.Name;		

                Session["UserCNIC"] = userresult1.CNIC;
                Session["UserPhone"] = userresult1.Phone;
                Session["UserLogoName"] = 1;

                Session["SignInUSerCheck"] = null;
                if (Session["CurrentURL"] != null)
                {

                    string url = Session["CurrentURL"].ToString();
                    Response.Redirect(url);
                    return;
                }
                Response.Redirect("index.aspx");

            }


            else if (userresult.User_Role == "User")
            {
                //Session["Name"] = Vendor_result.LawnName;

                //Session["VVID"] = Vendor_result.Id;
                Response.Redirect("VenderHome.aspx");

            }
            
        }
    }
}


