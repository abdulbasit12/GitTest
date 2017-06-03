using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookingPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["Booking"].ToString();
        Label1.Visible = true;
        Label2.Text = Session["Delete"].ToString();
        Label2.Visible = true;
    }
}