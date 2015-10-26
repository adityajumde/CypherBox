using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BAL;

namespace CYPHER_BOX
{
    public partial class Loginpage : System.Web.UI.Page
    {
        RegistrationBO rbo = new RegistrationBO();
        RegistrationBAL rbal = new RegistrationBAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            rbo.username = TextBox_username.Text.Trim();
            rbo.password = TextBox_password.Text.Trim();
            int value = rbal.login_BAL(rbo);
            if (value == 1)
            {
                Response.Redirect("messageEncryption.aspx");
            }

            else
            {
                label_incorrectlogin.Text="Invalid login";
            }
        }
    }
}