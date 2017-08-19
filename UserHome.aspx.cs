using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string strConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

        //SqlConnection myConnect = new SqlConnection(strConnectionString);

        //string strCommandText = "SELECT LawnName, Capcaity, Date FROM BookingInformation WHERE Id =@Id";
        //SqlCommand cmd = new SqlCommand(strCommandText, myConnect);
        //cmd.Parameters.AddWithValue("@Id", Id);

        //myConnect.Open();
        //SqlDataReader reader = cmd.ExecuteReader();
        //GridUserdata.DataSource = reader;
        //GridUserdata.DataBind();

        //reader.Close();
        //myConnect.Close();
    }
}