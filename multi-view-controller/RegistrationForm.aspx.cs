using System;
using System.Web.UI;

namespace multi_view_controller
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = txtEmail.Text;
                string gender = rblGender.SelectedValue;
                string age = txtAge.Text;

                //Response.Write($"<h2>Registration Successful</h2>" +
                //               $"<b>Name:</b> {name}<br />" +
                //               $"<b>Email:</b> {email}<br />" +
                //               $"<b>Gender:</b> {gender}<br />" +
                //               $"<b>Age:</b> {age}<br />");
            }
        }
    }
}