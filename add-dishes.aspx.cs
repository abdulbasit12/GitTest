using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_dishes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        PopulateObjectiveGrid(5);
    }
    protected void Dishes_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
    }

    private void PopulateObjectiveGrid(int addRows)
    {

        DataSet set = new DataSet();
        DataTable table = new DataTable("MenuTable");

        table.Columns.Add("");
        table.Columns.Add("");
        table.Columns.Add("");

        for (int i = 1; i <= addRows; i++)
        {
            table.Rows.Add(new object[] { "", "", "" });
        }
        set.Tables.Add(table);
        this.Dishes.DataSource = set;
        this.Dishes.DataBind();


    }


    protected void Unnamed_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in Dishes.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                TextBox textBox = row.FindControl("DishName") as TextBox;
                string DN = (row.FindControl("DishName") as TextBox).Text;
                string DP = (row.FindControl("dishPrice") as TextBox).Text;
                string DPP = (row.FindControl("MinPerson") as TextBox).Text;
                // do somthing with the text box textBox
            }
        }
             //String tb = ((TextBox)Dishes.Rows[1].FindControl("DishName")).Text;



    }
    protected void Unnamed_Click1(object sender, EventArgs e)
    {
        int gg=Dishes.Rows.Count;
        CopyToDataTable();
        
       


        
    }
    protected void CopyToDataTable()
    {
        //Create a new DataTable.
        DataTable dtCustomers = new DataTable("Customers");

        //Add columns to DataTable.
        foreach (TableCell cell in Dishes.HeaderRow.Cells)
        {
            dtCustomers.Columns.Add(cell.Text);
        }

        //Loop through the GridView and copy rows.
        foreach (GridViewRow row in Dishes.Rows)
        {
            if ((row.FindControl("dishPrice") as TextBox).Text !="")
            {
                int userid = Convert.ToInt16((row.FindControl("dishPrice") as TextBox).Text);
                string productname = (row.FindControl("DishName") as TextBox).Text;
                int price = Convert.ToInt16((row.FindControl("MinPerson") as TextBox).Text);
                dtCustomers.Rows.Add(productname, userid, price);
            }
        }

        PopulateObjectiveGrid(Dishes.Rows.Count+1);
        int checktable=0;
        foreach (GridViewRow row in Dishes.Rows)
        {
            if (dtCustomers.Rows.Count > checktable)
            {
                (row.FindControl("DishName") as TextBox).Text = dtCustomers.Rows[checktable][0].ToString();
                (row.FindControl("dishPrice") as TextBox).Text = dtCustomers.Rows[checktable][1].ToString();
                (row.FindControl("MinPerson") as TextBox).Text = dtCustomers.Rows[checktable][2].ToString();
                               checktable++;
            }
        }


       
       

    }
}