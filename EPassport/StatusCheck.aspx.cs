using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class StatusCheck : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         //   try
            //{

                con.Open();
                string h = "";
                string q2 = "select status from Appointment where applicantid=@applicantid";
                SqlCommand c1 = new SqlCommand(q2, con);
                c1.Parameters.Add(new SqlParameter("applicantid", Convert.ToInt32(tb.Text)));
                SqlDataReader rd1 = c1.ExecuteReader();
                while (rd1.Read())
                {
                    h = rd1.GetValue(0).ToString();

                }
                rd1.Close();
                if (h.Equals("Approved"))
                {
                    string q = "select datetime,location from Appointment where applicantid=@applicantid";
                    SqlCommand cm = new SqlCommand(q, con);
                    cm.Parameters.Add(new SqlParameter("applicantid", Convert.ToInt32(tb.Text)));
                    SqlDataReader rd = cm.ExecuteReader();
                    while (rd.Read())
                    {
                        Label64.Text = "Appointment date are:     " + rd.GetValue(0).ToString();
                        Label65.Text = "Appointment Location is:     " + rd.GetValue(1).ToString();
                    }
                  rd.Close();
            }
                else
                {
                Response.Write("<script> alert('Appointment Yet to be scheduled'); window.location('UserMainPage.aspx');</script>");
                
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