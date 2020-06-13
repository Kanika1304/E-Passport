using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EPassport
{
    public partial class LoginPageAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = "abc";
            string s2 = "abc";
            if (TextBox1.Text.Equals(s1) && TextBox2.Text.Equals(s2))
            {
                Response.Redirect("Admininfo.aspx");
                //Response.Write("jsdhb");
            }
        }
    }
}