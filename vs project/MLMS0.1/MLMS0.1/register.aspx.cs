using MLMS0._1;
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

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            authuserEntities ae = new MLMS0._1.authuserEntities();
            reg_user ruser = new reg_user();
            ruser.reg_uname = TextBox1.Text.ToString();
            ruser.reg_pass = TextBox2.Text.ToString();
            ruser.reg_cpass = TextBox3.Text.ToString();
            ruser.email_id = TextBox4.ToString();
            ruser.mobile_no = Decimal.Parse(TextBox5.Text.ToString());
           // const string inputSring = "Halo World";
            //byte[] bArray = Encoding.UTF8.GetBytes(inputSring);
            //ruser.reg_date =;
            ae.reg_user.Add(ruser);
            ae.SaveChanges();
            Response.Redirect("login.aspx");
        }
    }
}