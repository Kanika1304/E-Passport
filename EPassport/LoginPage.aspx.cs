using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
           // Session["Message"] = "Password or username is incorrect";
        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
         
            con.Open();
            string q1 = "select password from Registration where userid=@a";
            SqlCommand cmd = new SqlCommand(q1, con);
            cmd.Parameters.Add(new SqlParameter("a", Convert.ToInt32(TextBox1.Text)));
            SqlDataReader dataReader = cmd.ExecuteReader();
            
            if (dataReader.Read())
            {
                string password = dataReader.GetValue(0).ToString();
                string b = TextBox2.Text.ToString();
                if(password.Equals(b))
                {
                    Session["id1"] = TextBox1.Text;
                  Response.Redirect("UserMainPage.aspx");
                }
                else
                {
                    Response.Write("incorrect password!!!!!!!!!!!");
                }
            }
            else
            {
                Response.Write("user doesn't exist!!!!!!");
            }
        }
        

        
    }
}