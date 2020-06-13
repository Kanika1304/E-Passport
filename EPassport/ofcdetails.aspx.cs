using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class ofcdetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");
        string d = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                
                string q = "insert into PassportOfficeDetails(officename,state,address,phone) values(@a,@b,@c,@d)";
                SqlCommand cm = new SqlCommand(q, con);
                cm.Parameters.Add(new SqlParameter("a", TextBox1.Text));
                cm.Parameters.Add(new SqlParameter("b", DropDownList1.SelectedItem.Value));
                cm.Parameters.Add(new SqlParameter("c", TextBox2.Text));             
                cm.Parameters.Add(new SqlParameter("d", TextBox3.Text));
                
                int a = cm.ExecuteNonQuery();                
                if (a>0)
                {
                    //Response.Write("Office details added Successfully!!");
                   
                    d="Select officeid from PassportOfficeDetails where phone=@d";
                    SqlCommand ss = new SqlCommand(d, con);
                    ss.Parameters.Add(new SqlParameter("d",TextBox3.Text));
                    string g = "";
                    SqlDataReader rd = ss.ExecuteReader();
                    if (rd.Read())
                    {
                       g = rd.GetValue(0).ToString();
                    }
                  
                    Label7.Text=g.ToString();

                }
                

            }
            catch (Exception ee)
            { }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admininfo.aspx");
        }
    }
}