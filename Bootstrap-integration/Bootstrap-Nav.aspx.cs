using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bootstrap_integration
{
    public partial class Bootstrap_Nav : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblSelectedCity.Text = "Please select a city.";
            }
        }
        protected void ddlCities_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedCity = ddlCities.SelectedValue;
            lblSelectedCity.Text = string.IsNullOrEmpty(selectedCity) ? "No city selected." : $"You selected: {selectedCity}";
        }
    }
}