using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;


public partial class EmailSending : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String EmailID = Session["LawnOwnerID"].ToString();
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
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //String EmailID=Session["LawnOwnerID"].ToString();
    //   MailMessage msg= new MailMessage();
    //    msg.From= new MailAddress("ahsann10@gmail.com");
    //    msg.To.Add(EmailID);
    //    msg.Body="Your banquet is booked on 23-Dec-2016. You will recieve Token Money in two Days";
    //    msg.Subject = "IqraEventManagementSystem";
    //   msg.IsBodyHtml = true;
    //   SmtpClient smtp = new SmtpClient();
    //   smtp.Host = "smtp.gmail.com";
        
    //   smtp.EnableSsl = true;
            
    //   System.Net.NetworkCredential Networkcard = new System.Net.NetworkCredential();
    //   Networkcard.UserName = "ahsann10@gmail.com";
    //   Networkcard.Password = "kingofthejun";
    //   smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
    //   smtp.UseDefaultCredentials = true;
    //   smtp.Credentials = Networkcard;
    //   smtp.Port = 587;
       
    //          smtp.Send(msg);
    //   Label1.Text = "Email sent sucessfully Well done";

    //}

    public static void Email(String S, String D)
    {

       

    }
}