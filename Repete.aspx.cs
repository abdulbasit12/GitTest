using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Repete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FYPDataContext db = new FYPDataContext();
        var imm = from x in db.Images
                  select x;
        Repeater1.DataSource = imm;
        Repeater1.DataBind();
    }
}