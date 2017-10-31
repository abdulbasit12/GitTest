using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bookingstatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FYPDataContext db = new FYPDataContext();

        if (Session["BookingUser"] != null)
        {
            var booking_status = from x in db.BookingInformations
                                 join y in db.LawnOwners on x.LawnID equals y.Id
                                 where x.CustomerID == Convert.ToInt16(Session["BookingUser"])
                                 select new
                                 {
                                     Name = x.UserName,
                                     PlaceName = x.LawnName,
                                     PlaceAddress = y.Address,
                                     Rent = y.Rent,
                                     Place_Contact = y.Phone,
                                     x.Date,
                                     x.CNIC,
                                     x.Capcaity,
                                 };

            grd_booking.DataSource = booking_status;
            grd_booking.DataBind();

        }
        else
        {
            grd_booking.Visible = false;
            //lbl_erroe.Visible = true;
        }
    }
}