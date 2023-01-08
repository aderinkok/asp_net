using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ileri_web_programlama
{
    public partial class hafta4_dropdownlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_sehirListMan.Text = "Listede " + sehirListMan.Items.Count + " öğe bulunmaktadır.";
            lbl_secilenler.Text = "Listede " + secilenler.Items.Count + " öğe bulunmaktadır.";
        }
        public void SecimEkle(object sender, EventArgs e)
        {

            List<ListItem> silinecekler = new List<ListItem>();


            foreach (ListItem sehir in sehirListMan.Items)
            {
                if (sehir.Selected)
                {
                    silinecekler.Add(sehir);
                }

            }
            if (secilenler.Items.Count < 5 && (secilenler.Items.Count+silinecekler.Count)<=5 )
            {
                foreach (ListItem sil in silinecekler)
                {
                    secilenler.Items.Add(sil);
                    sehirListMan.Items.Remove(sil);
                }
            }
            else
            {
                uyari.Text = "<p class=\"alert alert-warning\" >En fazla 5 şehir seçebilirsiniz.";
            }


            lbl_sehirListMan.Text = "Listede " + sehirListMan.Items.Count + " öğe bulunmaktadır.";
            lbl_secilenler.Text = "Listede " + secilenler.Items.Count + " öğe bulunmaktadır.";



        }
        public void SecimCikart(object sender, EventArgs e)
        {


            List<ListItem> silinecekler = new List<ListItem>();

            foreach (ListItem sehir in secilenler.Items)
            {
                if (sehir.Selected)
                {
                    sehirListMan.Items.Add(sehir);
                    silinecekler.Add(sehir);
                }

            }
            foreach (ListItem sil in silinecekler)
            {
                secilenler.Items.Remove(sil);
            }
            lbl_sehirListMan.Text = "Listede " + sehirListMan.Items.Count + " öğe bulunmaktadır.";
            lbl_secilenler.Text = "Listede " + secilenler.Items.Count + " öğe bulunmaktadır.";

        }
    }
}