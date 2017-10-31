using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserLogoName"] != null)
        {

            UserName.InnerText = Session["Username"].ToString();
            clickonLabel.InnerText = "LogOut";
            mySidenav.Visible=false;
            mySidenav2.Visible=true;
            openNavv.Visible = false;
            openNavv1.Visible = true;
           
        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        if (clickonLabel.InnerText == "Signin")
        {
            Response.Redirect("UserSignIn.aspx");
        }
        if (clickonLabel.InnerText == "LogOut")
        {
            mySidenav.Visible = true;
            mySidenav2.Visible = false;
            openNavv.Visible = true;
            openNavv1.Visible = false;
            Session.Clear();
            Session.Abandon();
            Session["Username"] = null;
            Response.Redirect("UserSignIn.aspx");
            
        }
    }
    protected void Booking_Click(object sender, EventArgs e)
    {




    }
}
