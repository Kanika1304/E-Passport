using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EPassport
{
    public partial class ApplicantIdgen : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con1.Open();
                string qn = "Select applicantid from ApplicationForm where adharcard=@adharcard";
                SqlCommand cmd = new SqlCommand(qn, con1);
                cmd.Parameters.Add(new SqlParameter("adharcard", Session["mess"]));

                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    Label35.Text = rd.GetValue(0).ToString();
                }
                Session["id"] = Label35.Text;
            }
            catch (Exception ee)
            {
            }
            con1.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewApplicationForm.aspx");

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UploadDocuments.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserMainPage.aspx");
        }
    }
}