using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != Convert.ToString(1))
        {
            TableName.Text = "VENDOR DATA";
            GridView1.Visible = false;
            GridView2.Visible = true;
        }

        else
        {
            TableName.Text = "USER DATA";
            GridView1.Visible = true;
            GridView2.Visible = false;
        }


        if (!Page.IsPostBack)
        {
            getuserData();
        }

       



    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)(sender);
        string chk = btn.CommandArgument.ToString();
        FYPDataContext db = new FYPDataContext();
        var deactiveuser = (from x in db.AllUsers
                            where x.Email_ID.Equals(chk)
                            select x).FirstOrDefault();
        deactiveuser.Active = 0;
       
        db.SubmitChanges();
        
        
        

        
                         
        getuserData();
      
    
    }
    protected void getuserData() {

        FYPDataContext db = new FYPDataContext();
        var user_data = from x in db.AllUsers
                        join y in db.Users on x.Email_ID equals y.Email
                        where x.Active.Equals(1) & x.User_Role.Equals("User")
                        select new { y.Name, y.Phone, y.Email, y.CNIC, x.User_Role };
       
        GridView1.DataSource = (user_data);
        GridView1.DataBind();
    }
   
}