using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Panel navigationPanel = (Panel)Master.FindControl("NavPanel");
                navigationPanel.Visible = false;
                HttpContext context = HttpContext.Current;
                context.Session.Abandon();
            }
            catch (Exception ex)
            { }
        }

        protected void lnkReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx",false);
        }
    }
}