using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hafta1
{
    public partial class hafta4_dropdown2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        public void Cinsiyet_form_kontrol(object sender, EventArgs e)
        {
            if (Convert.ToInt16(cinsiyet.SelectedItem.Value) == 1)
            {
                askerlikPanel.Visible = true;
            }
            else
            { askerlikPanel.Visible = false; }
        }
        public void Onay_kontrol(object sender, EventArgs e)
        {
            if (Convert.ToInt16(onay.SelectedItem.Value) == 1)
            {
                kaydet.Enabled = true;
            }
            else { kaydet.Enabled = false; }
        }
        public void Kaydet(object sender, EventArgs e)
        {
            if (Convert.ToInt16(onay.SelectedItem.Value) == 1)
            {
                lbl_uyari.Text = "";
                cikti.Visible= true;    
                cikti2.Visible= true;    
                cikti3.Visible= true;    
                cikti4.Visible= true;    
                cikti5.Visible= true;    
                cikti6.Visible= true;
                if (Convert.ToInt16(cinsiyet.SelectedItem.Value) == 1)
                {

                    cikti7.Visible = true;
                    cikti8.Visible = true;
                }
                else {
                    cikti7.Visible = false;
                    cikti8.Visible = false;
                }

                lbl_ad.Text = ad.Text;
                lbl_soyad.Text = soyad.Text;
                lbl_yas.Text= yas.Text;
                lbl_askerlik.Text = askerlik.SelectedItem.Text;
            }
            else
            {
                lbl_uyari.Text = "Lütfen KVKK sözleşmesini onaylayın.";
                cikti.Visible = false;
                cikti2.Visible = false;
                cikti3.Visible = false;
                cikti4.Visible = false;
                cikti5.Visible = false;
                cikti6.Visible = false;
                cikti7.Visible = false;
                cikti8.Visible = false;
            }
        }
    }
}