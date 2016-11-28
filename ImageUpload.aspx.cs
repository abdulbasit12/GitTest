using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

public partial class ImageUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        FYPDataContext db = new FYPDataContext();
       

        var ID = (from a in db.LawnOwners
                 where a.Address.Equals(Session["Address"].ToString())
                 select a.Id).FirstOrDefault();
        HttpFileCollection imagecollection = Request.Files;

        if (FileUpload1.HasFiles)
        {
            for (int i = 0; i < imagecollection.Count; i++)
            {
                Image upload = new Image();
                string Extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (Extension.ToLower() != ".png" && Extension.ToLower() != ".gif" && Extension.ToLower() != ".jpg" && Extension.ToLower() != ".jpeg")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Invalid Image Format');", true);
                }
                else
                {

                    int File = FileUpload1.PostedFile.ContentLength;
                    if (File > 1048576)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Maximam File size is 1 MB');", true);
                    }

                    else
                    {
                        string path = "uploadimages/" + Path.GetFileName(FileUpload1.PostedFile.FileName);

                        upload.Uimg = path;
                        upload.LID = upload.LawnID = Convert.ToInt32(ID);
                        db.Images.InsertOnSubmit(upload);
                        db.SubmitChanges();
                        FileUpload1.SaveAs(Server.MapPath("~/uploadimages/" + FileUpload1.FileName));
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('File Uploaded Sucessfully!! :)');", true);
                        PicSuccess.Visible = true;
                        Response.Redirect("VenderHome.aspx");
                    }

                }


            }
        }

        else
        {


            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please Select Image First');", true);

        }
    }
}