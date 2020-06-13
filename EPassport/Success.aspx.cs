using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string qn = "select userid from Registration where email=@a";
                SqlCommand cmd = new SqlCommand(qn, con);
                cmd.Parameters.Add(new SqlParameter("a",Session["m"]));

                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    Label2.Text="Your User Id is:  " + rd.GetValue(0).ToString();                
                }
            }
            catch (Exception ee)
            {         
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}