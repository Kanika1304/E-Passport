using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class ViewApplicationForm : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["id"] != null)
                {
                    con1.Open();
                    string qn = "Select * from ApplicationForm where applicantid=@applicantid";
                    SqlCommand cmd = new SqlCommand(qn, con1);
                    cmd.Parameters.Add(new SqlParameter("applicantid", Session["id"]));

                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        Label35.Text = rd.GetValue(1).ToString();
                        Label36.Text = rd.GetValue(2).ToString();
                        Label37.Text = rd.GetValue(3).ToString();
                        Label38.Text = rd.GetValue(4).ToString();
                        Label39.Text = rd.GetValue(5).ToString();
                        Label40.Text = rd.GetValue(6).ToString();
                        Label41.Text = rd.GetValue(7).ToString();
                        Label42.Text = rd.GetValue(8).ToString();
                        Label43.Text = rd.GetValue(9).ToString();
                        Label44.Text = rd.GetValue(10).ToString();
                        Label45.Text = rd.GetValue(11).ToString();
                        Label46.Text = rd.GetValue(12).ToString();
                        Label47.Text = rd.GetValue(13).ToString();
                        Label48.Text = rd.GetValue(14).ToString();
                        Label49.Text = rd.GetValue(15).ToString();
                        Label50.Text = rd.GetValue(16).ToString();
                        Label51.Text = rd.GetValue(17).ToString();
                        Label52.Text = rd.GetValue(18).ToString();
                        Label53.Text = rd.GetValue(19).ToString();
                        Label54.Text = rd.GetValue(20).ToString();
                        Label55.Text = rd.GetValue(21).ToString();
                        Label56.Text = rd.GetValue(22).ToString();
                        Label57.Text = rd.GetValue(23).ToString();
                        Label58.Text = rd.GetValue(24).ToString();
                        Label59.Text = rd.GetValue(25).ToString();
                        Label60.Text = rd.GetValue(26).ToString();
                        Label61.Text = rd.GetValue(27).ToString();
                    }
                }
                else
                {
                    Response.Write("<script> alert('WRONG INPUT'); window.location('ApplicationForm.aspx');</script>");
                }
            }
            catch (Exception ee)
            {
            }
            con1.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserMainPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}