using System;

namespace multi_view_controller
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnNext1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnPrevious1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string gender = ddlGender.SelectedValue;
            string address = txtAddress.Text;
            string degree = txtDegree.Text;
            string email = txtEmail.Text;
            string contact = txtContact.Text;

            lblSummary.Text = $"<b>Name:</b> {name}<br />" +
                              $"<b>Gender:</b> {gender}<br />" +
                              $"<b>Address:</b> {address}<br />" +
                              $"<b>Degree:</b> {degree}<br />" +
                              $"<b>Email:</b> {email}<br />" +
                              $"<b>Contact No:</b> {contact}";

            MultiView1.ActiveViewIndex = 2;
        }

        protected void btnPrevious2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
    }
}