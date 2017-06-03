using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LawnDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack) { 
            FYPDataContext db= new FYPDataContext();
            var chkk = (from x in db.LawnOwners
                        where x.Address.Equals(Session["CheckAvail"].ToString())
                        select x).FirstOrDefault();

            LabelName.Text = chkk.LawnName.ToString();
            LabelAdd.Text = chkk.Address.ToString();
            lblcapacity.Text = chkk.SeatingCapacity.ToString();
            int VIDD = Convert.ToInt32( chkk.Id);

          var chkpic = (from x in db.Images
             where x.LawnID.Equals(VIDD)
                        select x);//.FirstOrDefault();
            
            SliderRep.DataSource = chkpic;
            SliderRep.DataBind();
            
            //lblrent.Text = chkk.Rent.ToString();
             
        
        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        DateTime d = Convert.ToDateTime(CheckAvailb.Text);
        FYPDataContext db = new FYPDataContext();//db.BookingInformations
        DateTime inn = DateTime.Now.Date.Date;
        TimeSpan ff = d-inn ;
        int fffff = ff.Days;
        if ( fffff < 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Don not select old dates');", true);
        }
        else
        {

            var chkLawnID = (from x in db.LawnOwners
                             where x.Address.Equals(Session["CheckAvail"].ToString())
                             select x).FirstOrDefault();
            int LID = chkLawnID.Id;
            var checkavail = (from x in db.BookingInformations
                              where x.Date.Equals(d) && x.LawnID.Equals(LID)
                              select x).FirstOrDefault();
            if (checkavail != null)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('This Date is already taken. Choose Another');", true);

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('This Date is Availible');", true);
            }
        }
    }
    protected void Unnamed_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Booking.aspx");
    }
    protected void CheckAvailb_DataBinding(object sender, EventArgs e)
    {
        
    }
}