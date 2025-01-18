using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace multi_view_controller
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;   
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Write($"User registered successfully!");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Write($"User logged in successfully!");
        }

        protected void btnGoToLogin_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(Login);
        }

        protected void btnGoToRegister_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(RegisterView);
        }

    }
}