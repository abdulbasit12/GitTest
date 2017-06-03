using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LawnRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            FYPDataContext db = new FYPDataContext();
            LawnOwner L = new LawnOwner();
            AllUser all = new AllUser();


            var checkVendor = (from x in db.AllUsers
                               where x.Email_ID.Equals(txtEmailL.Text)
                             select x).FirstOrDefault();
            if (checkVendor == null)
            {
                L.LawnName = txtLawnName.Text;
                L.SeatingCapacity = txtSeating.Text;
                L.Address = txtAddress.Text;
                L.BankAcc = txtAcc.Text;
                L.Phone = txtphone.Text;
                //L.Email = txtEmailL.Text;
                all.Email_ID = txtEmailL.Text;
                all.Password = txtPass.Text;
                all.User_Role = "Vendor";
              //  L.Password = txtPass.Text;
                //L.ConfirmPassword = txtConfirmPass.Text;
                L.Area = txtArea.Text;
                db.AllUsers.InsertOnSubmit(all);
                db.LawnOwners.InsertOnSubmit(L);
                db.SubmitChanges();
                Session["Address"] = txtAddress.Text;
                Session["Name"] = txtLawnName.Text;
                
                Response.Redirect("ImageUpload.aspx");
                            }
            else {

                Address_Error.Visible = true;
                            
            }
            txtArea.Text=txtEmailL.Text = txtphone.Text = txtAcc.Text = txtAddress.Text = txtSeating.Text = txtLawnName.Text = "";
        }
    }
}