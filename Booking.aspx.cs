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
            var checkdate = (from x in db.BookingInformations
                            where x.Date.Equals(date) & x.LawnName.Equals(txtOrgName.Text)
                            select x).FirstOrDefault();
            if (checkdate != null)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Date is already Exist');", true);
            }
            
        }
        if (!IsPostBack)
        {
            if (Session["BookingUser"] == null)
            {

                Response.Redirect("UserSignIn.aspx");
            }
            FYPDataContext db = new FYPDataContext();
            BookingInformation bookinfo = new BookingInformation();

            var info = (from x in db.LawnOwners
                        where x.Address.Equals(Session["Booking"].ToString())
                        select x).FirstOrDefault();

            txtOrgName.Text = info.LawnName;
            Session["LawnOwnerEmail"] = info.Email;


        }
    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        FYPDataContext db = new FYPDataContext();
        BookingInformation bookinfo = new BookingInformation();

        //var info = (from x in db.LawnOwners
        //            where x.Address.Equals(Session["Booking"].ToString())
        //            select x).FirstOrDefault();

        bookinfo.LawnName = txtOrgName.Text;
        bookinfo.UserName = txtUser.Text;
        bookinfo.CNIC = txtCNIC.Text;
        bookinfo.Capcaity = Convert.ToInt32(txtGuests.Text);
        bookinfo.Contact_No = txtContact.Text;
        bookinfo.Date =Convert.ToDateTime(txtDate.Text);
        db.BookingInformations.InsertOnSubmit(bookinfo);
        db.SubmitChanges();

        String EmailID = Session["LawnOwnerEmail"].ToString();
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("ahsann10@gmail.com");
        msg.To.Add(EmailID);
        msg.Body = "Your banquet is booked on 23-Dec-2016. You will recieve Token Money in two Days";
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