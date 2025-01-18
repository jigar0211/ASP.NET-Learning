using System;
using System.IO;

namespace multi_view_controller
{
    public partial class FileUploadDemo : System.Web.UI.Page
    {
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string folderPath = Server.MapPath("~/Uploads/");

                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    string filePath = folderPath + Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(filePath);

                    lblMessage.Text = "File uploaded successfully: " + FileUpload1.FileName;
                }
                catch (Exception ex)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please select a file to upload.";
            }
        }
    }
}