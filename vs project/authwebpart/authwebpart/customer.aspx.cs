using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace authwebpart
{
    public partial class customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["suser"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
      //  string cfpath=null;
        //string mfpath = null;
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

            string cons = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myConnection = new SqlConnection(cons);
            myConnection.Open();
            string cquery = "insert into customer ( c_fname,c_mname,c_lname,address,city,mobile_no,interest_rate,credit_limit)";
            cquery+="values(@c_fname,@c_mname,@c_lname,@address,@city,@mobile_no,@interest_rate,@credit_limit)";
            SqlCommand ccmd = new SqlCommand(cquery,myConnection);
            ccmd.Parameters.AddWithValue("@c_fname", TextBox1.Text.ToString());
            ccmd.Parameters.AddWithValue("@c_mname", TextBox2.Text.ToString());
            ccmd.Parameters.AddWithValue("@c_lname", TextBox3.Text.ToString());
            ccmd.Parameters.AddWithValue("@address", TextBox4.Text.ToString());
            ccmd.Parameters.AddWithValue("@city", DropDownList3.SelectedItem.Text.ToString());
            ccmd.Parameters.AddWithValue("@mobile_no", Decimal.Parse(TextBox7.Text.ToString()));
            ccmd.Parameters.AddWithValue("@interest_rate", Decimal.Parse(TextBox19.Text.ToString()));
            ccmd.Parameters.AddWithValue("@credit_limit", Decimal.Parse(TextBox18.Text.ToString()));
            ccmd.ExecuteNonQuery();
            string selcquery= "SELECT TOP 1 c_id FROM customer ORDER BY c_id DESC";

            SqlCommand sccmd1 = new SqlCommand(selcquery, myConnection);
            SqlDataReader myReader;
            myReader = sccmd1.ExecuteReader();
            myReader.Read();
            string dc_id = myReader["c_id"].ToString();
            int inc_id = Int32.Parse(dc_id);
            myReader.Close();
            string cmquery = "insert into cust_mor (c_id,item_type,item_name,gross_weight,rate,amount)";
            cmquery+="values(@c_id,@item_type,@item_name,@gross_weight,@rate,@amount)";
            SqlCommand cmcmd = new SqlCommand(cmquery, myConnection);
            cmcmd.Parameters.AddWithValue("@c_id",inc_id);
            cmcmd.Parameters.AddWithValue("@item_type", DropDownList1.SelectedItem.Text.ToString());
            cmcmd.Parameters.AddWithValue("@item_name", TextBox10.Text.ToString());
            cmcmd.Parameters.AddWithValue("@gross_weight", Decimal.Parse(TextBox12.Text.ToString()));
            cmcmd.Parameters.AddWithValue("@rate", Decimal.Parse(TextBox14.Text.ToString()));
            cmcmd.Parameters.AddWithValue("@amount", Decimal.Parse(TextBox16.Text.ToString()));
            cmcmd.ExecuteNonQuery();
            string tquery = "insert into transection (c_id,t_type,t_date,t_amount)";
            tquery += "values (@c_id,@t_type,@t_date,@t_amount)";
            SqlCommand tcmd = new SqlCommand(tquery, myConnection);


            tcmd.Parameters.AddWithValue("@c_id",inc_id);
            tcmd.Parameters.AddWithValue("@t_type","d");
            DateTime dt = System.DateTime.Now;

            tcmd.Parameters.AddWithValue("@t_date",dt);
            tcmd.Parameters.AddWithValue("@t_amount", Decimal.Parse(TextBox20.Text.ToString()));
            tcmd.ExecuteNonQuery();






            myConnection.Close();





















            /*authuserEntities ae = new authuserEntities();
            customer cust = new customer();
            cust_mor cm = new cust_mor();
            transection t = new transection();
            cust.c_fname = TextBox1.Text.ToString();
            cust.c_mname = TextBox2.Text.ToString();
            cust.c_lname = TextBox3.Text.ToString();
            cust.address = TextBox4.Text.ToString();
            cust.city = DropDownList3.SelectedItem.Text.ToString();
            cust.mobile_no = Decimal.Parse(TextBox7.Text.ToString());
          //  if(cfpath!=null && mfpath!=null)
            //{
              //  cust.cphoto_path = this.cfpath;

                //cust.mphoto_path = this.mfpath;
         //   }
          

            cm.c_id = cust.c_id;
            cm.item_type = DropDownList1.SelectedItem.Text.ToString();
            cm.item_name = TextBox10.Text.ToString();
            cm.gross_weight = Decimal.Parse(TextBox12.Text.ToString());
            cm.rate = Decimal.Parse(TextBox14.Text.ToString());
            cm.amount = Decimal.Parse(TextBox16.Text.ToString());

            cust.credit_limit = Decimal.Parse(TextBox18.Text.ToString());
            //cust.interest_rate = Decimal.Parse(TextBox19.Text.ToString());
            t.c_id = cust.c_id;
            t.t_type = "d";
            DateTime newdt = System.DateTime.Now;
            t.t_date = newdt;
            t.t_amount = Decimal.Parse(TextBox20.Text.ToString());
            ae.customers.Add(cust);
            //ae.cust_mor.Add(cm);
            ae.transections.Add(t);
            
            ae.SaveChanges();
            Response.Write("added...");*/
            Response.Write("added...");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                    {
                     //   if (FileUpload1.PostedFile.ContentLength < 102400)
                       // {
                            string filename = Path.GetFileName(FileUpload1.FileName);
                            FileUpload1.SaveAs(Server.MapPath("~/photos/") + filename);
                           // cfpath = "~/photos/"+filename;
                         Label22.Text = "Upload status: File uploaded!";
                       // }
                        //else
                        //    Label22.Text = "Upload status: The file has to be less than 100 kb!";
                    }
                    else
                        Label22.Text = "Upload status: Only JPEG files are accepted!";
                }
                catch (Exception ex)
                {
                    Label22.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                try
                {
                    if (FileUpload2.PostedFile.ContentType == "image/jpeg")
                    {
                        //if (FileUpload1.PostedFile.ContentLength < 1048576)
                        //{
                            string filename = Path.GetFileName(FileUpload2.FileName);
                            FileUpload2.SaveAs(Server.MapPath("~/photos/") + filename);
                            Label23.Text = "Upload status: File uploaded!";
                            //mfpath = "~/photos/" + filename;
                       // }
                        //else
                          //  Label23.Text = "Upload status: The file has to be less than 100 kb!";
                    }
                    else
                        Label23.Text = "Upload status: Only JPEG files are accepted!";
                }
                catch (Exception ex)
                {
                    Label23.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            TextBox10.Text = "";
           TextBox12.Text="";
            TextBox14.Text="";
            TextBox16.Text = "";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            DropDownList1.Dispose();
            TextBox10.Dispose();
            TextBox12.Dispose();
            TextBox14.Dispose();
            TextBox16.Dispose();
        }
    }
}