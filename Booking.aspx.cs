using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) {
            FYPDataContext db=new FYPDataContext();
            BookingInformation BookInf= new BookingInformation();
            String date = txtDate.Text;
            DateTime now1 = Convert.ToDateTime( txtDate.Text);
            var checkdate = (from x in db.BookingInformations
                            where x.Date.Equals(date) & x.LawnName.Equals(txtOrgName.Text)
                            select x).FirstOrDefault();
            DateTime now = DateTime.Now.Date;
           
            
            
            if (now1.Day <= now.Day && now1.Month <= now.Month && now1.Year<=now.Year) {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('You have selected OLD Date or Current Date. Please Select tomorrow or Onward Date');", true);
            
            }
            
                        else if (checkdate != null )
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('This Date Already has been taken');", true);
            }
            
        }
        if (!IsPostBack)
        {
            if (Session["BookingUser"] == null)
            {
              

              Session["CurrentURL"] =""+  HttpContext.Current.Request.Url.AbsolutePath+"";
              string ddddd = HttpContext.Current.Request.Url.AbsolutePath + HttpContext.Current.Request.Url.AbsolutePath;
              ViewState["ReturnUrl"] = Request.QueryString["ReturnUrl"];
              string Rurl = Request.QueryString["ReturnUrl"];

                // Response.Redirect(Session["CurrentURL"].ToString());
               // Server.Transfer("UserSignIn.aspx");
                Response.Redirect("UserSignIn.aspx");
            }
            FYPDataContext db = new FYPDataContext();
            BookingInformation bookinfo = new BookingInformation();

            var info = (from x in db.LawnOwners
                        where x.Address.Equals(Session["CheckAvail"].ToString())
                        select x).FirstOrDefault();

            txtOrgName.Text = info.LawnName;
            txtGuests.Text = info.SeatingCapacity;
            Session["LawnOwnerEmail"] = info.Email;
            Session["LawnIDs"] = info.Id;
            Session["LCapa"] = info.SeatingCapacity;



        }
    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            FYPDataContext db = new FYPDataContext();
            BookingInformation bookinfo = new BookingInformation();

            //var info = (from x in db.LawnOwners
            //            where x.Address.Equals(Session["Booking"].ToString())
            //            select x).FirstOrDefault();
            bookinfo.LawnID = Convert.ToInt32(Session["LawnIDs"].ToString());
            bookinfo.CustomerID = Convert.ToInt32(Session["BookingUser"].ToString());
            bookinfo.LawnName = txtOrgName.Text;
            bookinfo.UserName = txtUser.Text;
            bookinfo.CNIC = txtCNIC.Text;
            bookinfo.Capcaity = Convert.ToInt32(Session["LCapa"].ToString());
            bookinfo.Contact_No = txtContact.Text;
            bookinfo.Date = Convert.ToDateTime(txtDate.Text);
            db.BookingInformations.InsertOnSubmit(bookinfo);
            db.SubmitChanges();

            String EmailID = Session["LawnOwnerEmail"].ToString();
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("ahsann10@gmail.com");
            msg.Bcc.Add("ahsannadeem54@yahoo.com");
            msg.Bcc.Add("abdulbasit12m@gmail.com");
            msg.To.Add(EmailID);
            msg.Body = "Your banquet is booked on" + Convert.ToDateTime(txtDate.Text) + ". You will recieve Token Money in two Days";
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
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Booking Completed');", true);




        }

    }

   

}