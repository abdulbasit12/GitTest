using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        
        FYPDataContext db=new FYPDataContext();
        Image img=new Image();
    

        var Laww=from x in db.LawnOwners
                 where x.Area.Equals(SearchArea.Text)
                 select x.Id;
       

       var Imggg=from x in db.Images 
                    where  Laww.Contains(Convert.ToInt32(x.LawnID))
                 select x;

       GridView2.DataSource=Imggg;
       GridView2.DataBind();

        
        
    }
}