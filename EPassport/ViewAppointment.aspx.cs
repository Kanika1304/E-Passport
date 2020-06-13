using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EPassport
{
    public partial class Htmss1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=KOD-DTNT-PRP082\SQLSERVER;Initial Catalog=Passport;Integrated Security=True;Pooling=False");
        int count=0;
        List<string> l = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {

                {
                    con.Open();
                    string pr = "Select * from Appointment where status=@status";
                    SqlCommand cmd = new SqlCommand(pr, con);
                    cmd.Parameters.Add(new SqlParameter("status", "pending"));
                    SqlDataReader rd = cmd.ExecuteReader();
                    TableRow r11 = new TableRow();
                    TableCell c11 = new TableCell(); TableCell c12 = new TableCell(); TableCell c13 = new TableCell(); TableCell c14 = new TableCell();
                    TableCell c15 = new TableCell(); TableCell c16 = new TableCell(); TableCell c17 = new TableCell(); TableCell c18 = new TableCell();

                    c11.Text = "Applicant ID";
                    c12.Text = "Date Time";
                    c13.Text = "Location";
                    c14.Text = "First Name";
                    c15.Text = "Last Name";
                    c16.Text = "Phone";
                    c17.Text = "Email";
                    c18.Text = "Approve/Reject";

                    r11.Cells.Add(c11); r11.Cells.Add(c12); r11.Cells.Add(c13); r11.Cells.Add(c14);
                    r11.Cells.Add(c15); r11.Cells.Add(c16); r11.Cells.Add(c17); r11.Cells.Add(c18);

                    Table1.Rows.Add(r11);
                    while (rd.Read())
                    {
                        TableRow r = new TableRow();
                        TableCell c1 = new TableCell(); TableCell c2 = new TableCell(); TableCell c3 = new TableCell(); TableCell c4 = new TableCell();
                        TableCell c5 = new TableCell(); TableCell c6 = new TableCell(); TableCell c7 = new TableCell(); TableCell c8 = new TableCell();
                        TableCell c9 = new TableCell(); TableCell c10 = new TableCell();
                        c1.Text = rd.GetValue(0).ToString();
                        c2.Text = rd.GetValue(1).ToString();
                        c3.Text = rd.GetValue(2).ToString();
                        c4.Text = rd.GetValue(3).ToString();
                        c5.Text = rd.GetValue(4).ToString();
                        c6.Text = rd.GetValue(5).ToString();
                        c7.Text = rd.GetValue(6).ToString();
                        c8.Text = rd.GetValue(7).ToString();
                       
                        r.Cells.Add(c1); r.Cells.Add(c2); r.Cells.Add(c3); r.Cells.Add(c4);
                        r.Cells.Add(c5); r.Cells.Add(c6); r.Cells.Add(c7); r.Cells.Add(c8);
                        r.Cells.Add(c9); r.Cells.Add(c10);

                    Calendar d1 = new Calendar();
                    d1.ID = rd.GetValue(0).ToString();
                    l.Add(d1.ID.ToString());
                    c9.Controls.Add(d1);
                    r.Cells.Add(c9);
                    Table1.Rows.Add(r);
                    count++;  
                }
                }

                con.Close();
            }

          protected void Button1_Click1(object sender, EventArgs e)
        {

           
            int k = 0;
            con.Open();
            while(count >k)
            {
                string d = "Update Appointment set datetime=@d,status=@s where applicantid=@a";
                SqlCommand cmd = new SqlCommand(d,con);
                Calendar cal1 = (Calendar)Table1.Rows[k].Cells[7].FindControl(l[k].ToString());
                cmd.Parameters.Add(new SqlParameter("d", cal1.SelectedDate));
              cmd.Parameters.Add(new SqlParameter("s", "Approved"));
                cmd.Parameters.Add(new SqlParameter("a", l[k]));
                cmd.ExecuteNonQuery();
                k++;
            }
            Response.Redirect("Admininfo.aspx");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admininfo.aspx");
        }
    }
    }
