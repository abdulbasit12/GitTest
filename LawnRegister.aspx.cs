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


            var checkVendor = (from x in db.LawnOwners
                             where x.Address.Equals(txtAddress.Text)
                             select x).FirstOrDefault();
            if (checkVendor == null)
            {
                L.LawnName = txtLawnName.Text;
                L.SeatingCapacity = txtSeating.Text;
                L.Address = txtAddress.Text;
                L.BankAcc = txtAcc.Text;
                L.Phone = txtphone.Text;
                L.Email = txtEmailL.Text;
                L.Password = txtPass.Text;
                L.ConfirmPassword = txtConfirmPass.Text;

                db.LawnOwners.InsertOnSubmit(L);
                db.SubmitChanges();
                            }
            else {

                Address_Error.Visible = true;
                            
            }
            txtEmailL.Text = txtphone.Text = txtAcc.Text = txtAddress.Text = txtSeating.Text = txtLawnName.Text = "";
        }
    }
}