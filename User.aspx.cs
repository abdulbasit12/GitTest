using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            usersdiv.Visible = true;
            Catering.Visible = false;
            main.Visible = false;
        }
        
    }
    protected void Unnamed6_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            FYPDataContext db = new FYPDataContext();
            User u = new User();
            AllUser all = new AllUser();
            VerifyingCode VC = new VerifyingCode();
            var checkuser = (from x in db.AllUsers
                              where x.Email_ID.Equals(txtEmail.Text) 
                              select x).FirstOrDefault();
            var code = (from x in db.VerifyingCodes
                        where x.EmailID != null
                        select x.Code).Max();

            if (checkuser == null)
            {

                u.Name = txtName.Text;
                u.Phone = txtPhoneNumber.Text;
                u.Email = txtEmail.Text;
                u.CNIC = CNIC.Text;
                //u.Password = txtPassword.Text;
                all.Password = txtPassword.Text;
                all.Email_ID = txtEmail.Text;
                all.User_Role="User";
                VC.EmailID = txtEmail.Text;
                VC.Code =code+1;
                db.VerifyingCodes.InsertOnSubmit(VC);
                db.AllUsers.InsertOnSubmit(all);

                db.Users.InsertOnSubmit(u);
                db.SubmitChanges();
                Response.Write("Registration Scuessfully Complete");
              
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Registration Completed');", true);
                string codecheck = code + 1;
                //User u1 = new User();
                //var checkuser2 = (from x in db.Users
                //                 where x.Email.Equals(txtEmail.Text)
                //                 select x).FirstOrDefault();
                Session["SignInUSerCheck"] = 1;

                String EmailID = txtEmail.Text;
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("ahsann10@gmail.com");
                msg.Bcc.Add("ahsannadeem54@yahoo.com");
                msg.Bcc.Add("abdulbasit12m@gmail.com");
                msg.To.Add(EmailID);
                msg.Body = "Your Password For First Time Login Is" + codecheck + ". You need to enter this for Login.";
                msg.Subject = "IqraEventManagementSystem";
                msg.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";

                smtp.EnableSsl = true;

                System.Net.NetworkCredential Networkcard = new System.Net.NetworkCredential();
                Networkcard.UserName = "ahsann10@gmail.com";
                Networkcard.Password = "kingofthejun";
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = Networkcard;
                smtp.Port = 587;

                smtp.Send(msg);
                txtPhoneNumber.Text = txtEmail.Text = txtName.Text = "";
                Response.Redirect("UserSignin.aspx");
               
            }

            else {
                User_Error.Visible=true;
                txtPhoneNumber.Text = txtEmail.Text = txtName.Text = "";
            
            }

        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        usersdiv.Visible = false;
        Catering.Visible = false;
        main.Visible = true;
    }
    protected void Unnamed_Click1(object sender, EventArgs e)
    {

    }
    protected void Unnamed_Click2(object sender, EventArgs e)
    {
        usersdiv.Visible = false;
        Catering.Visible = true;
        main.Visible = false;

    }
    protected void Unnamed_Click3(object sender, EventArgs e)
    {
        usersdiv.Visible = true;
        Catering.Visible = false;
        main.Visible = false;
    }
}