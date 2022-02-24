using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ProfileImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("Profile.aspx", true);
        }

        protected void OrderImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("OrderPage.aspx", true);
        }
    }
}