using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace authwebpart
{
    public partial class dashboard : System.Web.UI.Page
    {

        public static string s = WebConfigurationManager.ConnectionStrings["authuserConnectionString"].ConnectionString;

        private SqlConnection scon = new SqlConnection(s);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["suser"] == null)
            {
                Response.Redirect("login.aspx");

            }
            if (!IsPostBack)
            {
                using (scon)
                {
                    scon.Open();
                    string ts = "select  sum(gross_weight) from cust_mor WHERE (cust_mor.c_id IN (select customer.c_id from customer where customer.isactive=1) AND cust_mor.item_type=@item_type) GROUP BY cust_mor.item_type";

                    SqlCommand cmdts = new SqlCommand(ts, scon);
                    cmdts.Parameters.AddWithValue("@item_type", "silver");
                    object totals = cmdts.ExecuteScalar();
                    string ss = Convert.ToString(totals);

                    string tg = "select  sum(gross_weight) from cust_mor WHERE (cust_mor.c_id IN (select customer.c_id from customer where customer.isactive=1) AND cust_mor.item_type=@item_type) GROUP BY cust_mor.item_type";
                    SqlCommand cmdtg = new SqlCommand(tg, scon);
                    cmdtg.Parameters.AddWithValue("@item_type", "gold");
                    object totalg = cmdtg.ExecuteScalar();
                    string sg = Convert.ToString(totalg);

                    string to = "select  sum(gross_weight) from cust_mor WHERE (cust_mor.c_id IN (select customer.c_id from customer where customer.isactive=1) AND cust_mor.item_type=@item_type) GROUP BY cust_mor.item_type";
                    SqlCommand cmdto = new SqlCommand(to, scon);
                    cmdto.Parameters.AddWithValue("@item_type", "other");
                    object totalo = cmdto.ExecuteScalar();
                    string so = Convert.ToString(totalo);

                    double dss = Double.Parse(ss);
                    double dsg = Double.Parse(sg);
                    double dso = Double.Parse(so);

                    Decimal dsokg = Convert.ToDecimal(dso / 1000);
                    Decimal rdsokg = Math.Round(dsokg,3);

                    Decimal dsgkg = Convert.ToDecimal(dsg / 1000);
                    Decimal rdsgkg = Math.Round(dsgkg, 3);

                    Decimal dsskg = Convert.ToDecimal(dss / 1000);
                    Decimal rdsskg = Math.Round(dsskg, 3);

                    LabelSilver.Text = rdsskg+"";
                    LabelGold.Text = rdsgkg+"";
                    LabelOther.Text = rdsokg+"";

                    ///////////////////////////

                    string totcq = "select  sum(t_amount) from transection where (transection.c_id in (select customer.c_id from customer where customer.isactive=1) AND t_type=@t_type) GROUP BY t_type";
                    SqlCommand cmdtotc = new SqlCommand(totcq, scon);
                    cmdtotc.Parameters.AddWithValue("@t_type", "c");
                    object totc = cmdtotc.ExecuteScalar();
                    string stc = Convert.ToString(totc);


                    string totdq = "select  sum(t_amount) from transection where (transection.c_id in (select customer.c_id from customer where customer.isactive=1) AND t_type=@t_type) GROUP BY t_type";
                    SqlCommand cmdtotd = new SqlCommand(totdq, scon);
                    cmdtotd.Parameters.AddWithValue("@t_type", "d");
                    object totd = cmdtotd.ExecuteScalar();
                    string std = Convert.ToString(totd);

                    LabelCredit.Text = std;
                    LabelDebit.Text = stc;


                }
            }
        }

      
    }
}