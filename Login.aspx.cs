using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel navigationPanel = (Panel)Master.FindControl("NavPanel");
                navigationPanel.Visible = false; 
            }
        }

        protected void Loginbtn_Click(object sender, EventArgs e)
        {
            if (UsernameText.Text == "wsmith" && PasswordText.Text == "webdev")
            {
                string fullName = "William Smith";
                Session["fullName"] = $"{fullName}";
                Session["userId"] = "wsmith";
                Server.Transfer($"/OrderPage.aspx", false);
            }
            else
            { 
                ValidationLabel.Visible = true;
            }
        }

        protected void NewProfileLink_Click(object sender, EventArgs e)
        {
            Server.Transfer("/Profile.aspx", false);
        }

        protected void Clearbtn_Click1(object sender, EventArgs e)
        {
            UsernameText.Text = String.Empty;
            PasswordText.Text = String.Empty;
            ValidationLabel.Visible = false;

        }
    }
}