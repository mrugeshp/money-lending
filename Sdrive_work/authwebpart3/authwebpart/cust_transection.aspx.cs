using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace authwebpart
{
    public partial class cust_transection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["suser"] == null )
            {
                Response.Redirect("login.aspx");
            }
            if( Session["c_id"] == null)
            {
                Response.Redirect("~/pages-404.html");
            }


        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           if(e.Row.RowType==DataControlRowType.Header)
            {
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[4].Visible = false;
            }
           else if(e.Row.RowType==DataControlRowType.DataRow)
            {
                double dcamount = Convert.ToDouble(e.Row.Cells[4].Text);
                string dctype = e.Row.Cells[3].Text;
                string culs = string.Format(new System.Globalization.CultureInfo("en-IN"), "{0:c}", dcamount);
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[4].Visible = false;
                if (dctype=="d")
                 {
                    e.Row.Cells[2].Text = culs;
                 }
                 else
                 {
                    e.Row.Cells[1].Text = culs;
                 }
            }
        }
    }
}