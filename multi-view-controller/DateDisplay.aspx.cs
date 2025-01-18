using System;

namespace multi_view_controller
{
    public partial class DateDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblCurrentDay.Text = "Today is: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblSelectedDate.Text = "You selected: " + Calendar1.SelectedDate.ToString("dddd, MMMM dd, yyyy");
        }
    }
}