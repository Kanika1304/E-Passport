using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class ApplicantsDetails : System.Web.UI.Page
    {
        string gender = "";
        SqlConnection con = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           try
            {
                con.Open();
                string q = "insert into ApplicationForm(fname,mname,lname,dob,placeofbirth,gender,phone,adharcard," +
                    "maritalstatus,pan,employeetype,education,emailid,fathersname,fathersphone,mothersname,mothersphone," +
                    "houseno,streetname,city,state,district,pincode,telephoneno,refname,refaddress,refphone) values (@fname,@mname,@lname,@dob,@placeofbirth,@gender,@phone,@adharcard," +
                    "@maritalstatus,@pan,@employeetype,@education,@emailid,@fathersname,@fathersphone,@mothersname,@mothersphone," +
                    "@houseno,@streetname,@city,@state,@district,@pincode,@telephoneno,@refname,@refaddress,@refphone)";
                SqlCommand cm = new SqlCommand(q, con);
                cm.Parameters.Add(new SqlParameter("fname", TextBox1.Text));
                cm.Parameters.Add(new SqlParameter("mname", TextBox2.Text));
                cm.Parameters.Add(new SqlParameter("lname", TextBox3.Text));
                cm.Parameters.Add(new SqlParameter("dob", TextBox4.Text));
                cm.Parameters.Add(new SqlParameter("placeofbirth", TextBox5.Text));
                cm.Parameters.Add(new SqlParameter("gender", gender));
                cm.Parameters.Add(new SqlParameter("phone", TextBox6.Text));
                cm.Parameters.Add(new SqlParameter("adharcard", TextBox7.Text));
                cm.Parameters.Add(new SqlParameter("maritalstatus", DropDownList1.SelectedItem.Value));////////dd
                cm.Parameters.Add(new SqlParameter("pan", TextBox8.Text));
                cm.Parameters.Add(new SqlParameter("employeetype", DropDownList2.SelectedItem.Value));////dd
                cm.Parameters.Add(new SqlParameter("education", DropDownList3.SelectedItem.Value));/////dd
                cm.Parameters.Add(new SqlParameter("emailid", TextBox20.Text));
                cm.Parameters.Add(new SqlParameter("fathersname", TextBox9.Text));
                cm.Parameters.Add(new SqlParameter("fathersphone", TextBox10.Text));
                cm.Parameters.Add(new SqlParameter("mothersname", TextBox11.Text));
                cm.Parameters.Add(new SqlParameter("mothersphone", TextBox12.Text));
                cm.Parameters.Add(new SqlParameter("houseno", TextBox13.Text));
                cm.Parameters.Add(new SqlParameter("streetname", TextBox14.Text));
                cm.Parameters.Add(new SqlParameter("city", TextBox15.Text));
                cm.Parameters.Add(new SqlParameter("state", TextBox16.Text));
                cm.Parameters.Add(new SqlParameter("district", TextBox17.Text));
                cm.Parameters.Add(new SqlParameter("pincode", TextBox18.Text));
                cm.Parameters.Add(new SqlParameter("telephoneno", TextBox19.Text));
                cm.Parameters.Add(new SqlParameter("refname", TextBox21.Text));
                cm.Parameters.Add(new SqlParameter("refaddress", TextBox22.Text));
                cm.Parameters.Add(new SqlParameter("refphone", TextBox23.Text));
                int c = cm.ExecuteNonQuery();
                
                Session["mess"] = TextBox7.Text;
                Session["m2"] = TextBox6.Text;
                
                if (c > 0)
                {
                    Response.Write("Done");            
                    Response.Redirect("ApplicantIdgen.aspx");
                }
                else
                {
                    Response.Write("Problem");
                }

            }
            catch (Exception ee)
            {
              Response.Write("aja yrr " + ee.Message + Session["m2"]);
            }
            con.Close();
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "M";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "F";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserMainPage.aspx");
        }
    }
    

 }
    

