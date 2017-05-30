﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSignin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            FYPDataContext db = new FYPDataContext();


            var userresult = (from x in db.AllUsers
                              where x.Email_ID.Equals(txtSignInName.Text) & x.Password.Equals(txtpasswordSignIn.Text)
                              select x).FirstOrDefault();

            //var Vendor_result = (from x in db.LawnOwners
            //                     where x.LawnName.Equals(txtSignInName.Text) & x.Password.Equals(txtpasswordSignIn.Text)
            //                     select x).FirstOrDefault();


            if (userresult == null)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('UserName or Password is Incorrect');", true);

            }
            else if (Session["CurrentURL"] != null)
            {

                Response.Redirect(Session["CurrentURL"].ToString());
            
            
            }
            else if (userresult.User_Role != "Vendor")
            {
                Session["BookingUser"] = userresult.Id;
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


