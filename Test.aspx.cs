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
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        str = "Select * From LawnOwners";
        comm = new SqlCommand(str, con);
        SqlDataReader reader = comm.ExecuteReader();

        while (reader.Read())
        {
            reader.Read();
            Namelbl.Text = reader["LawnName"].ToString();
        }
        reader.Close();
        con.Close();

        con.Open();
        SqlDataReader reader1 = comm.ExecuteReader();

        while (reader1.Read())
        {
            reader1.Read();
            Addresslbl.Text = reader1["Address"].ToString();
        }
        reader1.Close();
        con.Close();

        con.Open();
        SqlDataReader reader2 = comm.ExecuteReader();

        while (reader2.Read())
        {
            reader2.Read();
            Capacitylbl.Text = reader2["SeatingCapacity"].ToString();
        }
        reader2.Close();
        con.Close();

        con.Open();
        SqlDataReader reader3 = comm.ExecuteReader();
        while (reader3.Read())
        {
            reader3.Read();
            Rentlbl.Text = reader3["Rent"].ToString();
        }
        reader3.Close();
        con.Close();
    }
}