using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class VenderHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
            Label1.Text=Session["Name"].ToString();
            FYPDataContext db = new FYPDataContext();
            BookingInformation bk = new BookingInformation();
            var chkdate = from x in db.BookingInformations
                          where x.LawnName.Equals(Session["Name"].ToString())
                          select new {x.LawnName,x.UserName,x.Date };
        
            grid1.DataSource = chkdate;
           grid1.DataBind();

        
        
    }
}