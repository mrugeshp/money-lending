using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace authwebpart
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cons = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myConnection = new SqlConnection(cons);
            myConnection.Open();
            string rquery = "insert into reg_user ( reg_uname,reg_pass,email_id,mobile_no,reg_date)";
            rquery += "values(@reg_uname,@reg_pass,@email_id,@mobile_no,@reg_date)";
            if(TextBox1.Text!=""  && TextBox2.Text !="" && TextBox3.Text!="" && TextBox4.Text != "" && TextBox5.Text!="")
            {
                SqlCommand regcmd = new SqlCommand(rquery, myConnection);
                regcmd.Parameters.AddWithValue("@reg_uname", TextBox1.Text.ToString());
                regcmd.Parameters.AddWithValue("@reg_pass", TextBox2.Text.ToString());
                regcmd.Parameters.AddWithValue("@email_id", TextBox4.Text.ToString());
                DateTime newDt = System.DateTime.Now;
                regcmd.Parameters.AddWithValue("@reg_date", newDt);
                regcmd.Parameters.AddWithValue("@mobile_no", Decimal.Parse(TextBox5.Text.ToString()));

                myConnection.Close();
            }else
            {
                Response.Write("empty field----try again...");
            }
           



            /* authuserEntities ae = new authuserEntities();
             reg_user ruser = new reg_user();
             ruser.reg_uname = TextBox1.Text.ToString();
             ruser.reg_pass = TextBox2.Text.ToString();
             ruser.reg_cpass = TextBox3.Text.ToString();
             ruser.email_id = TextBox4.Text.ToString();
             ruser.mobile_no =Decimal.Parse( TextBox5.Text.ToString());
             //DateTime dt = new DateTime();

             DateTime newDt = System.DateTime.Now;
             ruser.reg_date =newDt;
             ae.reg_user.Add(ruser);
             ae.SaveChanges();*/
            Response.Write("added succesfully...");
        }
    }
}