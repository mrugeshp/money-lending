using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MLM0._0
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void ContinueButton_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("login.aspx");
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
           
        }
    }
}