using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class Appointment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");
        string ss = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
           {
                con.Open();    
               
                string q1 = "select applicantid from ApplicationForm where applicantid=@applicantid";
                SqlCommand cm2 = new SqlCommand(q1, con);
                cm2.Parameters.Add(new SqlParameter("applicantid", Convert.ToInt32(tb.Text)));
                SqlDataReader rd2 = cm2.ExecuteReader();
               while (rd2.Read())
                {
                    ss = rd2.GetValue(0).ToString();
                }
               rd2.Close();
               
  
                string q = "insert into Appointment(applicantid,datetime,location,fname,lname,phone,email) values (@apid,@c,@d,@e,@f,@g,@h)";
                SqlCommand cm = new SqlCommand(q, con);
                cm.Parameters.Add(new SqlParameter("apid", ss));
                cm.Parameters.Add(new SqlParameter("c", Convert.ToDateTime(TextBox1.Text)));
                cm.Parameters.Add(new SqlParameter("d", DropDownList3.SelectedItem.Value));             
                cm.Parameters.Add(new SqlParameter("e", TextBox4.Text));
                cm.Parameters.Add(new SqlParameter("f", TextBox3.Text));
                cm.Parameters.Add(new SqlParameter("g", TextBox5.Text));
                cm.Parameters.Add(new SqlParameter("h", TextBox6.Text));
                Session["a"] = tb.Text;      //applicantid
                Session["b"] = TextBox1.Text;   //date time
               Session["c"] = DropDownList3.SelectedItem; //location
                Session["d"] = TextBox4.Text;   //name
                int c = cm.ExecuteNonQuery();
                
                if (c>0)
                {
                    Response.Write("@<script> alert('Appointment Scheduled Done'); window.location('UserMainPage.aspx');</script>");
                }
                else
                {
                    Response.Write("<script> alert('Appointment Already Scheduled'); window.location('UserMainPage.aspx');</script>");
                }
               
            }
           catch (Exception ee)
            {
                Response.Write("<script> alert('Appointment Already 454564 Scheduled'); window.location('UserMainPage.aspx');</script>");
            }
            con.Close();
            
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