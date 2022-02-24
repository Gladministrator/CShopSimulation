using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            string userName = (string)context.Session["userId"];
            if (!IsPostBack)
            {
                if (userName != null)
                {
                    SaveButton.Text = "Update";
                    UserIDText.Text = userName;
                    PasswordPanel.Visible = false;

                    if (userName == "fbrown")
                    {
                        FirstNameText.Text = "Fred";
                        LastNameText.Text = "Brown";
                        StreetText.Text = "Route 101";
                        CityText.Text = "Mauville City";
                        RegionText.Text = "Hoenn";
                        PostalCodeText.Text = "12345";
                        TelePhoneText.Text = "123 456 7890";
                    }
                    else if (userName == "wsmith")
                    {
                        FirstNameText.Text = "William";
                        LastNameText.Text = "Smith";
                        StreetText.Text = "Route 21";
                        CityText.Text = "Pallet Town";
                        RegionText.Text = "Kanto";
                        PostalCodeText.Text = "54321";
                        TelePhoneText.Text = "321 654 0987";
                    }
                }
                else
                {
                    Panel navigationPanel = (Panel)Master.FindControl("NavPanel");
                    navigationPanel.Visible = false;
                }
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            if (SaveButton.Text == "Update")
            {
                Server.Transfer("/LandingPage.aspx", false);
            }
            else if (SaveButton.Text == "Create")
            {
                Server.Transfer("Login.aspx",false);
            }
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            FirstNameText.Text = String.Empty;
            LastNameText.Text = String.Empty;
            StreetText.Text = String.Empty;
            CityText.Text = String.Empty;
            RegionText.Text = String.Empty;
            PostalCodeText.Text = String.Empty;
            TelePhoneText.Text = String.Empty;
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (SaveButton.Text == "Update")
            {
                Server.Transfer("LandingPage.aspx", false);
            }
            else if (SaveButton.Text == "Create")
            {
                Session["userId"] = "fbrown";
                Session["fullName"] = $"Fred Brown";
                Server.Transfer("LandingPage.aspx", false);
            }
        }
    }
}