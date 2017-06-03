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
                 select a).FirstOrDefault();
        Session["VVID"] = Convert.ToInt32(ID.Id);
        HttpFileCollection imagecollection = Request.Files;

        if (FileUpload1.HasFiles)
        {
            for (int i = 0; i < imagecollection.Count; i++)
            {
                String path="";
                Image upload = new Image();
                HttpPostedFile uploadIma = imagecollection[i];
                string Extension = System.IO.Path.GetExtension(uploadIma.FileName);
                if (Extension.ToLower() != ".png" && Extension.ToLower() != ".gif" && Extension.ToLower() != ".jpg" && Extension.ToLower() != ".jpeg")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Invalid Image Format');", true);
                }
                else
                {

                    int File = uploadIma.ContentLength;
                    if (File > 1048576)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Maximam File size is 1 MB');", true);
                    }

                    else
                    {
                       
                        path = "uploadimages/" + Path.GetFileName("" + uploadIma.FileName);

                        if (i == 0) {
                            upload.Name = "Cover";
                            
                        }
                        else {
                            upload.Name = ID.LawnName.ToString();
                        }
                        

                        upload.Uimg = path;
                        upload.LawnID = Convert.ToInt32(ID.Id);
                        db.Images.InsertOnSubmit(upload);
                        db.SubmitChanges();
                        uploadIma.SaveAs(Server.MapPath("~/uploadimages/" + uploadIma.FileName));
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('File Uploaded Sucessfully!! :)');", true);
                        PicSuccess.Visible = true;
                       
                    }

                }


            }
           
            Response.Redirect("VenderHome.aspx");
        }

        else
        {


            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please Select Image First');", true);

        }
    }
}