using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Test : System.Web.UI.Page
{
    String str;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
        con.Open();
        str = "Select * From LawnOwners";
        comm = new SqlCommand(str, con);
        SqlDataReader reader = comm.ExecuteReader();
        reader.Read();
        Namelbl.Text = reader["LawnName"].ToString();
        reader.Read();
        Arealbl.Text = reader["Area"].ToString();
        reader.Read();
        Capacitylbl.Text = reader["SeatingCapacity"].ToString();
        reader.Close();
        con.Close();
    }
}