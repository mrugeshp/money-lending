using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MLM0._0
{
    public partial class look_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string urlName = Request.UrlReferrer.ToString();
            if(urlName.Contains("register.aspx"))
            {
                Response.Write("in request for....admin approval....Thank you For Passions...");

            }
        }
    }
}