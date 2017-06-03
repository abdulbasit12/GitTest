using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed6_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            FYPDataContext db = new FYPDataContext();
            User u = new User();
            AllUser all = new AllUser();
            var checkuser = (from x in db.AllUsers
                              where x.Email_ID.Equals(txtEmail.Text) 
                              select x).FirstOrDefault();
            

            if (checkuser == null)
            {

                u.Name = txtName.Text;
                u.Phone = txtPhoneNumber.Text;
                u.Email = txtEmail.Text;
                //u.Password = txtPassword.Text;
                all.Password = txtPassword.Text;
                all.Email_ID = txtEmail.Text;
                all.User_Role="User";
                db.AllUsers.InsertOnSubmit(all);

                db.Users.InsertOnSubmit(u);
                db.SubmitChanges();
                Response.Write("Registration Scuessfully Complete");
                txtPhoneNumber.Text = txtEmail.Text = txtName.Text = "";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Registration Completed');", true);
               
                //User u1 = new User();
                //var checkuser2 = (from x in db.Users
                //                 where x.Email.Equals(txtEmail.Text)
                //                 select x).FirstOrDefault();
                //Session["BookingUser"] = checkuser2.Id;
                Response.Redirect("Lawns.aspx");
               
            }

            else {
                User_Error.Visible=true;
                txtPhoneNumber.Text = txtEmail.Text = txtName.Text = "";
            
            }

        }
    }
}