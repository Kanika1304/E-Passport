using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");
        string gen = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string q = "insert into Registration(password,fname,lname,dob,gender,phone,email) values(@a,@b,@c,@d,@e,@f,@g)";
                SqlCommand cm = new SqlCommand(q, con);
                cm.Parameters.Add(new SqlParameter("a", TextBox5.Text));
                cm.Parameters.Add(new SqlParameter("b", TextBox1.Text));
                cm.Parameters.Add(new SqlParameter("c", TextBox2.Text));
                cm.Parameters.Add(new SqlParameter("d", Convert.ToDateTime(TextBox3.Text)));
                cm.Parameters.Add(new SqlParameter("e", gen));
                cm.Parameters.Add(new SqlParameter("f", Convert.ToInt32(TextBox6.Text)));
                cm.Parameters.Add(new SqlParameter("g", TextBox7.Text));
                int a=cm.ExecuteNonQuery();
                Session["m"] = TextBox7.Text;
                if (a > 0)
                {
                    Response.Write("Registered Successfully!!");
                    Response.Redirect("Success.aspx");
                }
        
            }
            catch (Exception ee)
            { }
            con.Close();
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
             gen = "M";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
             gen = "F";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}