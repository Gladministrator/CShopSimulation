using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class OrderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void VegMenu_SelectedChanged(object sender, EventArgs e)
        {
            decimal total = getValueDecimal(Tomatoesddl.SelectedValue) + getValueDecimal(Carrotsddl.SelectedValue) + getValueDecimal(Lettuceddl.SelectedValue);
            string strTotal = total != 0 ? total.ToString("0.00") : "0.00";
            VegetablesTotalText.Text = $"${strTotal}";
            updateTotal();
        }

        protected void MeatCheck_CheckedChanged(object sender, EventArgs e)
        {
            decimal meatTotal = 0.00M;

            foreach (Control meatCheck in MeatPanel.Controls.OfType<CheckBox>())
            {
                if (((CheckBox)meatCheck).Checked)
                {
                    meatTotal = meatTotal + 5.00M;
                }
            }
            MeatTotalText.Text = $"${meatTotal.ToString("0.00")}";
            updateTotal();
        }

        protected void Dairy_SelectedIndexChanged(object sender, EventArgs e)
        {
            DairyTotalText.Text = $"${getValueDecimal(Dairyddl.SelectedValue)}";
            updateTotal();
        }

        decimal getValueDecimal(string val)
        {
            return val != "-1" ? decimal.Parse(val) : 0.00M;
        }

        void updateTotal()
        {
            decimal total = Decimal.Parse(VegetablesTotalText.Text.Replace("$", "")) + Decimal.Parse(MeatTotalText.Text.Replace("$","")) + Decimal.Parse(DairyTotalText.Text.Replace("$", ""));
            TotalText.Text = $"${total.ToString("0.00")}";
        }

        protected void Receiptbtn_Click(object sender, EventArgs e)
        {
            string meatMenu = String.Empty;

            foreach(CheckBox x in MeatPanel.Controls.OfType<CheckBox>())
            {
                if (x.Checked)
                {
                    meatMenu = meatMenu + x.Text + ", ";
                }
            }

            char[] charsTrim = { ',', ' ' };
            HttpContext context = HttpContext.Current;
            Server.Transfer($"/ReceiptPage.aspx?Name:={(string)context.Session["fullName"]}&Tomatoes:={Tomatoesddl.SelectedItem}&Carrots:={Carrotsddl.SelectedItem}&Lettuce:={Lettuceddl.SelectedItem}" +
                $"&Meat:={meatMenu.Trim(charsTrim)}&Dairy:={Dairyddl.SelectedItem}&Total:={TotalText.Text}", false);
        }
    }
}