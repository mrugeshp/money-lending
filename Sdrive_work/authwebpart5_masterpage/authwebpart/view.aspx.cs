﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace authwebpart
{
    public partial class view : System.Web.UI.Page
    {

       public static string s = WebConfigurationManager.ConnectionStrings["authuserConnectionString"].ConnectionString;

        private SqlConnection scon= new SqlConnection(s);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["suser"] == null)
            {
                Response.Redirect("login.aspx");
            }
            
            
            if (!IsPostBack)
            {
               


                string dc_id = Request.QueryString["c_id"];

                Session.Add("c_id", dc_id);
                
                HiddenField1.Value = dc_id;
                Response.Write("-----------------"+dc_id);
                if (dc_id == null)
                {
                    Response.Redirect("cust_list.aspx");
                }
               // string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (scon)
                {
                    scon.Open();
                    string query = "select * FROM  customer where c_id=@c_id";

                    SqlCommand sqc = new SqlCommand(query, scon);
                    
                    sqc.Parameters.AddWithValue("@c_id", Int32.Parse(HiddenField1.Value.ToString()));



                    using (SqlDataReader rdr = sqc.ExecuteReader())
                    {
                        if (rdr.HasRows)
                        {
                            rdr.Read();

                            Label25.Text = rdr["c_id"].ToString();
                            Label19.Text = rdr["c_fname"].ToString() + " " + rdr["c_mname"].ToString() + " " + rdr["c_lname"].ToString();
                            Label21.Text = rdr["city"].ToString();
                            Label20.Text = rdr["address"].ToString();
                            Label22.Text = rdr["mobile_no"].ToString();
                            Label23.Text = rdr["interest_rate"].ToString();
                            Label24.Text = rdr["credit_limit"].ToString();
                            Label26.Text = rdr["updated_date"].ToString();
                            /* Response.Write(rdr["c_id"].ToString());
                              Response.Write(rdr["c_fname"].ToString());
                              Response.Write(rdr["c_mname"].ToString());
                              Response.Write(rdr["c_lname"].ToString());
                              Response.Write(rdr["address"].ToString());
                              Response.Write(rdr["city"].ToString());
                              Response.Write(rdr["email_id"].ToString());
                              Response.Write(rdr["mobile_no"].ToString());
                              Response.Write(rdr["cphoto_path"].ToString());
                              Response.Write(rdr["mphoto_path"].ToString());
                              Response.Write(rdr["create_date"].ToString());
                              Response.Write(rdr["created_date"].ToString());
                              Response.Write(rdr["updated_date"].ToString());
                              Response.Write(rdr["interest_rate"].ToString());
                              Response.Write(rdr["credit_limit"].ToString());
                              */
                        }
                        else
                        {
                            Response.Redirect("~/cust_list.aspx");
                        }

                    }
                   
                    /*string cmquery = "select * FROM  cust_mor where c_id=@c_id";
                    SqlCommand sqcm = new SqlCommand(cmquery, scon);
                    sqcm.Parameters.AddWithValue("@c_id", Int32.Parse(HiddenField1.Value.ToString()));
                    Response.Write("\n");
                    SqlDataReader rdr1 = sqcm.ExecuteReader();
                    GridView1.DataSource = rdr1;
                    GridView1.DataBind();
                    rdr1.Close();*/
                 /*   using (SqlDataReader rdr = sqcm.ExecuteReader())
                    {
                        while (rdr.Read())
                        {


                            Response.Write(rdr["c_id"].ToString());
                            Response.Write(rdr["item_type"].ToString());
                            Response.Write(rdr["item_name"].ToString());

                            Response.Write(rdr["gross_weight"].ToString());
                            Response.Write(rdr["rate"].ToString());
                            Response.Write(rdr["amount"].ToString());
                        }

                    }*/

                }
            }
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            // string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //if (TextBox12.Text != "" && TextBox14.Text != "" && TextBox10.Text != "" && TextBox16.Text != "" && DropDownList1.SelectedIndex > -1 && DropDownList1.SelectedIndex != 0)
            // {
            if (TextBox17.Text != "" && TextBox17 != null)
            {

                using (scon)
                {
                    scon.Open();
                    /* scon.Open();
                     string query = "insert into cust_mor (c_id,item_type,item_name,gross_weight,rate,amount)";
                     query += "values(@c_id,@item_type,@item_name,@gross_weight,@rate,@amount)";
                     SqlCommand cmd = new SqlCommand(query, scon);
                     cmd.Parameters.AddWithValue("@c_id", Int32.Parse(HiddenField1.Value.ToString()));

                     cmd.Parameters.AddWithValue("@item_type", DropDownList1.SelectedItem.Text);
                     cmd.Parameters.AddWithValue("@item_name", TextBox10.Text.ToString());
                     cmd.Parameters.AddWithValue("@gross_weight", Decimal.Parse(TextBox12.Text.ToString()));
                     cmd.Parameters.AddWithValue("@rate", Decimal.Parse(TextBox14.Text.ToString()));
                     cmd.Parameters.AddWithValue("@amount", Decimal.Parse(TextBox16.Text.ToString()));

                     cmd.ExecuteNonQuery();
                    */
                    ////////////////////////////////////////////////////////////////

                    string tquery = "insert into transection (c_id,t_type,t_date,t_amount)";
                    tquery += "values (@c_id,@t_type,@t_date,@t_amount)";

                    SqlCommand tcmd = new SqlCommand(tquery, scon);
                    tcmd.Parameters.AddWithValue("@c_id", Int32.Parse(HiddenField1.Value.ToString()));

                    tcmd.Parameters.AddWithValue("@t_date", System.DateTime.Now);

                  //  if (TextBox17.Text != "" && TextBox17 != null)
                 //   {
                        tcmd.Parameters.AddWithValue("t_amount", Decimal.Parse(TextBox17.Text.ToString()));
                    
                    if (RadioButtonList1.SelectedIndex == 0)
                        {
                            tcmd.Parameters.AddWithValue("@t_type", "c");
                            tcmd.ExecuteNonQuery();
                            Response.Write(" credit transection is added succesfully...");
                        }
                        else if (RadioButtonList1.SelectedIndex == 1)
                        {
                            tcmd.Parameters.AddWithValue("@t_type", "d");
                            tcmd.ExecuteNonQuery();
                            Response.Write(" debit transection is added succesfully...");
                        }
                        else
                        {
                            Response.Write("select transection type!!!");
                        }


                  //  }
                   /* else
                    {
                        Response.Write("empty  ttransection amount field ");
                    }*/


                    //  }
                    // }
                    // else
                    // {
                    //  Response.Write("contain empty field...in mortgage details");
                    //}
                }
            }
            else
            {
                Response.Write("empty  ttransection amount field ");
            }
            
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            using (scon)
            {
                scon.Open();
                string upquery = "UPDATE customer SET isactive = @isactive where c_id=@c_id";
                SqlCommand cmd = new SqlCommand(upquery, scon);
                cmd.Parameters.AddWithValue("@c_id", Int32.Parse(HiddenField1.Value.ToString()));

                cmd.Parameters.AddWithValue("@isactive", false);
                cmd.ExecuteNonQuery();

            }


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox12.Text != "" && TextBox14.Text != "" && TextBox10.Text != "" && TextBox16.Text != "" && DropDownList1.SelectedIndex > -1 && DropDownList1.SelectedIndex != 0)
            {
                using (scon)
                {
                    Response.Write("start");
                    scon.Open();
                    string query = "insert into cust_mor (c_id,item_type,item_name,gross_weight,rate,amount)";
                    query += "values(@c_id,@item_type,@item_name,@gross_weight,@rate,@amount)";
                    SqlCommand cmd = new SqlCommand(query, scon);
                    cmd.Parameters.AddWithValue("@c_id", Int32.Parse(HiddenField1.Value.ToString()));

                    cmd.Parameters.AddWithValue("@item_type", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@item_name", TextBox10.Text.ToString());
                    cmd.Parameters.AddWithValue("@gross_weight", Decimal.Parse(TextBox12.Text.ToString()));
                    cmd.Parameters.AddWithValue("@rate", Decimal.Parse(TextBox14.Text.ToString()));
                    cmd.Parameters.AddWithValue("@amount", Decimal.Parse(TextBox16.Text.ToString()));

                    cmd.ExecuteNonQuery();
                    Response.Redirect("~/view.aspx?c_id=" + HiddenField1.Value.ToString());
                    Response.Write("finish");
                }
            }
            else
            {
                Response.Write("error");
            }
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[4].Visible = false;
            }
            else if (e.Row.RowType == DataControlRowType.DataRow)
            {
                double dcamount = Convert.ToDouble(e.Row.Cells[4].Text);
                string dctype = e.Row.Cells[3].Text;
                string culs = string.Format(new System.Globalization.CultureInfo("en-IN"), "{0:c}", dcamount);
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[4].Visible = false;
                if (dctype == "d")
                {
                    e.Row.Cells[2].Text = culs;
                }
                else
                {
                    e.Row.Cells[1].Text = culs;
                }
            }
        }
        /*protected void GridView1_DataBound(object sender, EventArgs e)
        {
            if (GridView1.EditIndex > -1)
                GridView1.Columns[5].Visible = false;
            else
                GridView1.Columns[5].Visible = true;
        }*/
    }
}