using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace module2
{
    public partial class customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {


            try
            {


                module2.authuserDbContext adc = new module2.authuserDbContext();
                if (adc != null)
                {
                    module2.customer cust = new module2.customer();
                    if (cust != null)
                    {
                        // cust_mor cm = new module2.cust_mor();
                        //transection t = new transection();
                        //  cust.c_fname = TextBox1.Text.ToString();
                        cust.c_fname = "a";
                        //cust.c_mname = TextBox2.Text.ToString();

                        //cust.c_lname = TextBox3.Text.ToString();
                        cust.c_mname = "b";
                        cust.c_lname = "c";
                        //cust.address = TextBox4.Text.ToString();
                        cust.address = "abc";
                        cust.city = "godhra";
                        cust.mobile_no = 58622232;
                        cust.email_id = "ewfweweas";
                        //cust.email_id = TextBox6.Text.ToString();
                        cust.mphoto_path = "fnnsjknjkfs";
                        cust.cphoto_path = "fnnsjknjkfs";
                        cust.interest_rate = 234;
                        cust.credit_limit = 234;
                        /*public string cphoto_path { get; set; }
            public string mphoto_path { get; set; }
            public Nullable<System.DateTime> create_date { get; set; }
            public Nullable<System.DateTime> created_date { get; set; }
            public Nullable<System.DateTime> updated_date { get; set; }
            public Nullable<decimal> interest_rate { get; set; }
            public decimal credit_limit { get; set; }*/
                        //  if(cfpath!=null && mfpath!=null)
                        //{
                        //  cust.cphoto_path = this.cfpath;

                        //cust.mphoto_path = this.mfpath;
                        //   }


                        /*cm.c_id = cust.c_id;
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

                        ae.cust_mor.Add(cm);
                        ae.transections.Add(t);*/
                        adc.customers.Add(cust);
                        adc.SaveChanges();



                        Response.Write("added...");
                    }
                    else
                    {
                        Response.Write("server busy...");
                    }
                }
                else
                {
                    Response.Write("server busy...");
                }

            }catch(Exception ex)
            {
                Response.Write(ex.Message.ToString());
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            TextBox10.Text = "";
            TextBox12.Text = "";
            TextBox14.Text = "";
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