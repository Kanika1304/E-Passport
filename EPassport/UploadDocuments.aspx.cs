using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class UploadDocuments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(@"C:\Users\KA20094837\Desktop\Jacob\" + FileUpload1.FileName);
                /*SqlConnection con = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");

                try
                {
                    SqlCommand cmd = new SqlCommand("Insert into DocsUpload(pancard) values (@pancard)", con);
                    cmd.Parameters.Add(new SqlParameter("@pancard", FileUpload1.FileName));

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
                catch(Exception ee) { }
                con.Close();*/

                Label8.Text = "File Uploaded: " + FileUpload1.FileName;
                Label8.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                Label8.Text = "No File Uploaded.";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {

                FileUpload2.SaveAs(@"C:\Users\KA20094837\Desktop\Jacob\" + FileUpload2.FileName);
                Label9.ForeColor = System.Drawing.Color.ForestGreen;
                Label9.Text = "File Uploaded: " + FileUpload2.FileName;
            }
            else
            {
                Label9.Text = "No File Uploaded.";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (FileUpload3.HasFile)
            {

                FileUpload3.SaveAs(@"C:\Users\KA20094837\Desktop\Jacob\" + FileUpload3.FileName);
                Label10.ForeColor = System.Drawing.Color.ForestGreen;
                Label10.Text = "File Uploaded: " + FileUpload3.FileName;
            }
            else
            {
                Label10.Text = "No File Uploaded.";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (FileUpload4.HasFile)
            {

                FileUpload4.SaveAs(@"C:\Users\KA20094837\Desktop\Jacob\" + FileUpload4.FileName);
                Label11.ForeColor = System.Drawing.Color.ForestGreen;
                Label11.Text = "File Uploaded: " + FileUpload4.FileName;
            }
            else
            {
                Label11.Text = "No File Uploaded.";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (FileUpload5.HasFile)
            {

                FileUpload5.SaveAs(@"C:\Users\KA20094837\Desktop\Jacob\" + FileUpload5.FileName);
                Label12.ForeColor = System.Drawing.Color.ForestGreen;
                Label12.Text = "File Uploaded: " + FileUpload5.FileName;
            }
            else
            {
                Label12.Text = "No File Uploaded.";
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Appointment.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserMainPage.aspx");
        }
    }
}