using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
namespace authwebpart
{
    public partial class cust_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["suser"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if(!IsPostBack)
            {
                string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection scon = new SqlConnection(s))
                {
                    scon.Open();
                    string query = " SELECT c_id, c_fname, c_mname, c_lname, city, create_date FROM  customer where isactive=@isactive ORDER BY create_date";
                    SqlCommand sqc = new SqlCommand(query, scon);
                    sqc.Parameters.AddWithValue("@isactive", true);
                    
                    GridView2.DataSource = sqc.ExecuteReader();
                    GridView2.DataBind();
                }

            }
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/view.aspx?c_id="+((LinkButton)sender).Text);
        }
    }
}