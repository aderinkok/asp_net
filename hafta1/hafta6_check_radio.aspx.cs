using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hafta1
{
    public partial class hafta6_check_radio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kaydet_Click(object sender, EventArgs e)
        {
            lbl_ad.Text = ad.Text;
            lbl_soyad.Text = soyad.Text;
            if (r1.Checked)
                lbl_cinsiyet_radioButton.Text = r1.Text;
            if (r2.Checked)
                lbl_cinsiyet_radioButton.Text = r2.Text;
            if(rgC.SelectedItem!=null)
            lbl_cinsiyet_radioGroup.Text = rgC.SelectedItem.Text;
            lbl_dil_checkbox.Text = "";
            if (dil1.Checked)
            {
                lbl_dil_checkbox.Text += dil1.Text;
            }

            if (dil2.Checked)
            {
                if (lbl_dil_checkbox.Text != "")
                    lbl_dil_checkbox.Text += ", ";
                lbl_dil_checkbox.Text += dil2.Text;
            }

            if (dil3.Checked)
            {
                if (lbl_dil_checkbox.Text != "")
                    lbl_dil_checkbox.Text += ", ";
                lbl_dil_checkbox.Text += dil3.Text;
            }

            if (dil4.Checked)
            {
                if (lbl_dil_checkbox.Text != "")
                    lbl_dil_checkbox.Text += ", ";
                lbl_dil_checkbox.Text += dil4.Text;
            }

            if (dil5.Checked)
            {
                if (lbl_dil_checkbox.Text != "")
                    lbl_dil_checkbox.Text += ", ";
                lbl_dil_checkbox.Text += dil5.Text;
            }

            if (dil6.Checked)
            {
                if (lbl_dil_checkbox.Text != "")
                    lbl_dil_checkbox.Text += ", ";

                lbl_dil_checkbox.Text += dil6.Text;
            }

            lbl_dil_checkboxGroup.Text = "";
            for (int i = 0; i<=dil.Items.Count - 1; i++)
            {
                if (dil.Items[i].Selected)
                {
                    lbl_dil_checkboxGroup.Text += ", "+ dil.Items[i].Text;
                }
            }

        }
    }
}