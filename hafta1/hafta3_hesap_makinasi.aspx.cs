using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ileri_web_programlama
{
    public partial class hafta3_hesap_makinasi : System.Web.UI.Page
    {
        static double a, b;
        static string d;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Bir_click(object sender, EventArgs e)
        {
            Ekleme(deger,"1");
        }
        public void Iki_click(object sender, EventArgs e)
        {
            Ekleme(deger, "2");
        }
        public void Uc_click(object sender, EventArgs e)
        {
            Ekleme(deger, "3");
        }
        public void Dort_click(object sender, EventArgs e)
        {
            Ekleme(deger, "4");
        }
        public void Bes_click(object sender, EventArgs e)
        {
            Ekleme(deger, "5");
        }
        public void Alti_click(object sender, EventArgs e)
        {
            Ekleme(deger, "6");
        }
        public void Yedi_click(object sender, EventArgs e)
        {
            Ekleme(deger, "7");
        }
        public void Sekiz_click(object sender, EventArgs e)
        {
            Ekleme(deger, "8");
        }
        public void Dokuz_click(object sender, EventArgs e)
        {
            Ekleme(deger, "9");
        }
        public void Sifir_click(object sender, EventArgs e)
        {
            Ekleme(deger, "0");
        }
        public void Arti_click(object sender, EventArgs e)
        {
            d = "+";
            a = Convert.ToDouble(deger.Text);
            deger.Text = "";
            sonuc.Text = Convert.ToString(a) + "+";
        }
        public void Eksi_click(object sender, EventArgs e)
        {
            d = "-";
            a = Convert.ToDouble(deger.Text);
            deger.Text = "";
            sonuc.Text = Convert.ToString(a) + "-";
        }
        public void Carpi_click(object sender, EventArgs e)
        {
            d = "*";
            a = Convert.ToDouble(deger.Text);
            deger.Text = "";
            sonuc.Text = Convert.ToString(a) + "*";
        }
        public void Bolme_click(object sender, EventArgs e)
        {
            d = "/";
            a = Convert.ToDouble(deger.Text);
            deger.Text = "";
            sonuc.Text = Convert.ToString(a) + "/" ;
        }
        public void Esittir_click(object sender, EventArgs e)
        {

            b = Convert.ToDouble(deger.Text);
            if (d == "+")
            {
                deger.Text = Convert.ToString(a + b);
                sonuc.Text = Convert.ToString(a) + "+" + Convert.ToString(b) + "=" + Convert.ToString(a + b);
            }
            if (d == "-")
            {
                deger.Text = Convert.ToString((sbyte)(a - b));
                sonuc.Text = Convert.ToString(a) + "-" + Convert.ToString(b) + "=" + Convert.ToString(a - b);
            }
            if (d == "*")
            {
                deger.Text = Convert.ToString(a * b);
                sonuc.Text = Convert.ToString(a) + "*" + Convert.ToString(b) + "=" + Convert.ToString(a * b);
            }
            if (d == "/")
            {
                deger.Text = Convert.ToString(a / b);
                sonuc.Text = Convert.ToString(a) + "/" + Convert.ToString(b) + "=" + Convert.ToString(a / b);
            }
        }
        public void Silme_click(object sender, EventArgs e)
        {
            deger.Text = "";
            sonuc.Text = "";
            a = 0;
            b=0;
            d = "";

        }
        private void Ekleme(TextBox ornek, string karakter)
        {
            if (ornek.Text != "")
            {
                ornek.Text += karakter;
            }
            else
            {
                ornek.Text = karakter;
            }
        }
    }
}