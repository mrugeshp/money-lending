using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace authwebpart
{
    public partial class search_datewise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["suser"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(fromSearchTextBox.Text);
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/view.aspx?c_id=" + ((LinkButton)sender).Text);
        }

    }
}