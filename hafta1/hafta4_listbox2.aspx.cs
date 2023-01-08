using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ileri_web_programlama
{
    public partial class hafta4_listbox2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Ekle(object sender, EventArgs e)
        {
            if(metin.Text!="") //Eğer textbox boşsa listbox'a veri eklememek için.
            sehirList.Items.Add(metin.Text);
            metin.Text = ""; //Ekleme işlemi gerçekleştikten sonra textbox'ın içini temizler.
        }
        public void Sil(object sender, EventArgs e)
        {
            sehirList.Items.Remove(sehirList.SelectedItem);
        }


    }
}