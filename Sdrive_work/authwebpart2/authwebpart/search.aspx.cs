using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace authwebpart
{
    public partial class search : System.Web.UI.Page
    {
        public static string cons = WebConfigurationManager.ConnectionStrings["authuserConnectionString"].ConnectionString;
        SqlConnection scon = new SqlConnection(cons);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["suser"] == null)
            {
                Response.Redirect("login.aspx");

            }
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool found = false;
            if(TextBox1.Text!=null && TextBox1!=null)
            {
                using (scon)
                {
                    scon.Open();

                    long i = 0;
                    string findnum = TextBox1.Text.ToString();
                    bool result = long.TryParse(findnum, out i);

                    if (result)
                    {
                        if (findnum.Length == 10)
                        {
                            string mobquery = "select * FROM  customer where mobile_no=@mobile_no";
                            SqlCommand ccmd = new SqlCommand(mobquery, scon);
                            ccmd.Parameters.AddWithValue("@mobile_no", i);
                            SqlDataReader reader = ccmd.ExecuteReader();
                            if (reader.HasRows)
                            {
                                Response.Write("\nsearch output by mobile no:");
                                GridView1.Enabled = true;
                                //GridView1.DataSource = SqlDataSource1.ID;
                              //  GridView1.DataBind();
                               
                                GridView1.Visible = true;
                                

                            }
                            else
                            {
                                Response.Write("\nNo search result found.--please correct your mobile no");
                            }
                            reader.Close();

                        }
                        else
                        {
                            string query = "select * FROM  customer where c_id=@c_id";
                            SqlCommand ccmd = new SqlCommand(query, scon);
                            ccmd.Parameters.AddWithValue("@c_id", i);
                            SqlDataReader reader = ccmd.ExecuteReader();

                            if (reader.HasRows)
                            {
                                reader.Read();

                                Response.Redirect("~/view.aspx?c_id=" + reader["c_id"]);
                            }
                            else
                            {
                                Response.Write("\nNo search result found.");
                            }
                            reader.Close();

                        }


                    }
                    else
                    {

                        string ctquery = "select * FROM  customer where city=@city";
                        SqlCommand ctcmd = new SqlCommand(ctquery, scon);
                        ctcmd.Parameters.AddWithValue("@city", findnum);
                        SqlDataReader reader2 = ctcmd.ExecuteReader();
                        if (reader2.HasRows)
                        {
                            Response.Write("\nSearch output by city");
                            found = true;
                            GridView2.Enabled = true;
                            GridView2.Visible = true;

                        }
                        else
                        {
                            Response.Write("\nrecord not found. in city checking for name.....");
                        }
                        reader2.Close();
                        if (!found)
                        {
                            //  string nmquery = "select * FROM  customer where  (c_mname like "+"'%'"+"@c_mname"+"'%'"+" OR c_fname"+" like "+"'%'"+"@c_fname"+"'%'"+ " OR c_lname like"+"'%'"+"@c_lname"+"'%'"+")";
                            //  string nmquery = "select * FROM  customer where  c_mname like " + "'%'" + "@c_mname" + "'%'";
                            string nmquery = " SELECT* FROM customer  WHERE([c_fname] LIKE '%' + @c_fname + '%' OR [c_mname] LIKE '%' + @c_mname + '%' OR [c_lname] LIKE '%' + @c_lname + '%')";
                            SqlCommand nmcmd = new SqlCommand(nmquery, scon);
                            nmcmd.Parameters.AddWithValue("@c_fname", findnum);
                            nmcmd.Parameters.AddWithValue("@c_mname", findnum);
                            nmcmd.Parameters.AddWithValue("@c_lname", findnum);
                            
                            SqlDataReader reader1 = nmcmd.ExecuteReader();
                            if (reader1.HasRows)
                            {
                                Response.Write("\nSearch output by name:");
                                found = true;
                                GridView3.Enabled = true;
                                GridView3.Visible = true;

                            }
                            else
                            {
                                Response.Write("\nrecord not found in name and city both ...");
                            }
                            reader1.Close();
                        }
                        if(!found)
                        {
                            Response.Write("\nnot found");
                        }
                    }
                }
            }
            else
            {
                Response.Write("empty Search Field...");
            }
            
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/view.aspx?c_id=" + ((LinkButton)sender).Text);
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/view.aspx?c_id=" + ((LinkButton)sender).Text);
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/view.aspx?c_id=" + ((LinkButton)sender).Text);
        }

       
    }
}