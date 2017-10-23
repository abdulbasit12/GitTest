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
        FYPDataContext db = new FYPDataContext();
                             
                foreach (GridViewRow row in Dishes.Rows)
                {
                   if ((row.FindControl("DishName") as TextBox).Text != "" && (row.FindControl("dishPrice") as TextBox).Text != "" && (row.FindControl("MinPerson") as TextBox).Text !="")
            {
                Item additem = new Item();          
                            additem.Items = (row.FindControl("DishName") as TextBox).Text;
                additem.Rate = Convert.ToInt16((row.FindControl("dishPrice") as TextBox).Text);
                additem.Min_Person = Convert.ToInt16((row.FindControl("MinPerson") as TextBox).Text);
                additem.Status = 1;
                additem.CaterID = 1;
                db.Items.InsertOnSubmit(additem);
                db.SubmitChanges();
             }

        }
             
       

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
                int DishP = Convert.ToInt16((row.FindControl("dishPrice") as TextBox).Text);
                string Dishname = (row.FindControl("DishName") as TextBox).Text;
                int price = Convert.ToInt16((row.FindControl("MinPerson") as TextBox).Text);
                dtCustomers.Rows.Add(Dishname, DishP, price);
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