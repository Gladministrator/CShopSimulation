using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class ReceiptPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (string key in Request.QueryString.AllKeys)
                {
                    if (Request.QueryString[key] != "Select" && Request.QueryString[key] != "")
                    {
                        Label item = new Label();
                        item.Text = $"{key} {Request.QueryString[key]}";
                        ReceiptPanel.Controls.Add(item);
                    }
                }
            }

        }
    }
}