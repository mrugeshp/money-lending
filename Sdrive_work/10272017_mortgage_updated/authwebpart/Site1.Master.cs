﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace authwebpart
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["roleid"].ToString() =="1")
            {
                LinkButton7.Visible = true;
                LinkButton8.Visible = true;
            }
        }
    }
}