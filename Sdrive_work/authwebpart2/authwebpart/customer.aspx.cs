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
        public static string cons = WebConfigurationManager.ConnectionStrings["authuserConnectionString"].ConnectionString;
        SqlConnection myConnection = new SqlConnection(cons);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["suser"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if(!IsPostBack)
            {
                Calendar1.Visible = false;
            }
           
        }
        //  string cfpath=null;
        //string mfpath = null;
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

         
         
            using (myConnection)
            {


                myConnection.Open();
                string cquery = "insert into customer ( c_fname,c_mname,c_lname,address,city,mobile_no,create_date,created_date,interest_rate,credit_limit)";
                cquery += "values(@c_fname,@c_mname,@c_lname,@address,@city,@mobile_no,@create_date,@created_date,@interest_rate,@credit_limit)";
                SqlCommand ccmd = new SqlCommand(cquery, myConnection);
                ccmd.Parameters.AddWithValue("@c_fname", TextBox1.Text.ToString());
                ccmd.Parameters.AddWithValue("@c_mname", TextBox2.Text.ToString());
                ccmd.Parameters.AddWithValue("@c_lname", TextBox3.Text.ToString());
                ccmd.Parameters.AddWithValue("@address", TextBox4.Text.ToString());
                ccmd.Parameters.AddWithValue("@city", DropDownList3.SelectedItem.Text.ToString());
                ccmd.Parameters.AddWithValue("@mobile_no", Decimal.Parse(TextBox7.Text.ToString()));
                ccmd.Parameters.AddWithValue("@create_date", System.DateTime.Now);
                String MyString;
                MyString = TextBox21.Text.ToString();
                //MyString = "1999-09-01 21:34 p.m.";  //Depends on your regional settings

                DateTime MyDateTime;
                MyDateTime = new DateTime();
                MyDateTime = DateTime.Parse(MyString);
                ccmd.Parameters.AddWithValue("@created_date", MyDateTime);
                ccmd.Parameters.AddWithValue("@interest_rate", Decimal.Parse(TextBox19.Text.ToString()));
                ccmd.Parameters.AddWithValue("@credit_limit", Decimal.Parse(TextBox18.Text.ToString()));
                ccmd.ExecuteNonQuery();
                
                string tquery = "insert into transection (c_id,t_type,t_date,t_amount)";
                tquery += "values (@c_id,@t_type,@t_date,@t_amount)";
                SqlCommand tcmd = new SqlCommand(tquery, myConnection);


                tcmd.Parameters.AddWithValue("@c_id", inc_id);
                tcmd.Parameters.AddWithValue("@t_type", "d");
                DateTime dt = System.DateTime.Now;

                tcmd.Parameters.AddWithValue("@t_date", dt);
                tcmd.Parameters.AddWithValue("@t_amount", Decimal.Parse(TextBox20.Text.ToString()));
                tcmd.ExecuteNonQuery();






                myConnection.Close();

                Response.Write("added...");
            }
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

       

      

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible)
            {
                Calendar1.Visible = false;

            }
            else
            {
                Calendar1.Visible = true;

            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox21.Text = Calendar1.SelectedDate.Date.ToString();
            Calendar1.Visible = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string selcquery = "SELECT TOP 1 c_id FROM customer ORDER BY c_id DESC";

            SqlCommand sccmd1 = new SqlCommand(selcquery, myConnection);
            SqlDataReader myReader;
            myReader = sccmd1.ExecuteReader();
            myReader.Read();
            string dc_id = myReader["c_id"].ToString();
            int inc_id = Int32.Parse(dc_id);
            myReader.Close();
            string cmquery = "insert into cust_mor (c_id,item_type,item_name,gross_weight,rate,amount)";
            cmquery += "values(@c_id,@item_type,@item_name,@gross_weight,@rate,@amount)";
            SqlCommand cmcmd = new SqlCommand(cmquery, myConnection);
            cmcmd.Parameters.AddWithValue("@c_id", inc_id);
            cmcmd.Parameters.AddWithValue("@item_type", DropDownList1.SelectedItem.Text.ToString());
            cmcmd.Parameters.AddWithValue("@item_name", TextBox10.Text.ToString());
            cmcmd.Parameters.AddWithValue("@gross_weight", Decimal.Parse(TextBox12.Text.ToString()));
            cmcmd.Parameters.AddWithValue("@rate", Decimal.Parse(TextBox14.Text.ToString()));
            cmcmd.Parameters.AddWithValue("@amount", Decimal.Parse(TextBox16.Text.ToString()));
            cmcmd.ExecuteNonQuery();


            Response.Redirect("~/customer.aspx");
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if(e.NextStepIndex==2)
            {
                lblName.Text = TextBox1.Text+" " + TextBox2.Text +" "+ TextBox3.Text;
                lblCity.Text = DropDownList3.SelectedValue;
                lblMobile.Text = TextBox7.Text;
                lblEmail.Text = TextBox6.Text;
                lblAdd.Text = TextBox4.Text;
                lblId.Text = TextBox8.Text;
            }
            if(e.NextStepIndex==1)
            {
                TextBox9.Text= TextBox1.Text + " " + TextBox2.Text + " " + TextBox3.Text;
                using (myConnection)
                {
                    myConnection.Open();
                    string que = "SELECT TOP 1 * FROM customer ORDER BY c_id DESC";
                    SqlCommand ccmd = new SqlCommand(que, myConnection);
                    SqlDataReader reader = ccmd.ExecuteReader();
                    if(reader.HasRows)
                    {
                        reader.Read();
                        string s = reader["c_id"].ToString();
                        int ncid = Int32.Parse(s) + 1;
                        TextBox8.Text = ncid+"";
                    }
                    else
                    {
                        TextBox8.Text = "1";
                    }
                    reader.Close();
                    myConnection.Close();
                }
                
            }
        }
    }
}