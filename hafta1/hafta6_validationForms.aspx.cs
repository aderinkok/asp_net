using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hafta1
{
    public partial class hafta6_validationForms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kaydet_Click(object sender, EventArgs e)
        {

        }

        protected void telefonC_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string RegexDesen = @"^(05(\d{9}))$";
            Match Eslesme = Regex.Match(telefon.Text, RegexDesen, RegexOptions.IgnoreCase);
                if (Eslesme.Success)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
        protected void Denetimcift(object source, ServerValidateEventArgs args)
        {

            long k=0, deger;
            try
            {
                k = Convert.ToInt64(tc.Text);
            }
            catch(Exception ex)
            {
                args.IsValid = false;
            }
            deger = k % 2;
            if (deger == 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void Denetim11(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 11)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void Denetim0(object source, ServerValidateEventArgs args)
        {
            long sıfır, sonuc;
            sıfır = Convert.ToInt64(tc.Text);
            sonuc = sıfır / 10000000000;
            if (sonuc != 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            bool sonuc=false;
            
            for(int i=0; i<=cinsiyet.Items.Count-1;i++) {
                if (cinsiyet.Items[i].Selected)
                {
                    sonuc = true;
                }
               
            }
            if (sonuc)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            bool sonuc = false;

            for (int i = 0; i <= dil.Items.Count - 1; i++)
            {
                if (dil.Items[i].Selected)
                {
                    sonuc = true;
                }

            }
            if (sonuc)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (bolum.SelectedIndex < 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}