using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hafta1
{
    public partial class hafta4_dropdown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sayfada autopostback özelliği olan bir nesne varsa sayfa her yüklendiğinde
            //IsPostBack bloğundaki verilerin çalışmaması için bu şartlı ifade eklenmektedir.
            if (!IsPostBack)
            {
                //Veritabanı bağlantısı kullanılmadığından bu işlem bu şekilde gerçekleştirilmektedir!
                List<ListItem> iller = new List<ListItem>() {

            new ListItem("Malatya","44"),
            new ListItem("Bilecik","11"),
            };

                //Verilerin Dropdown'a eklenmesi
                foreach (ListItem Il in iller)
                {
                    il.Items.Add(Il);
                }
            }
        }

        public void IlceGetir(object sender, EventArgs e)
        {

            //Veritabanı bağlantısı kullanılmadığından bu işlem bu şekilde gerçekleştirilmektedir!
            // İl dropdown öğesinin autopostback özelliği true olarak ayarlanmazsa bu alan çalışmayacaktır.
            List<ListItem> ilceler = new List<ListItem>();
            string plaka = il.SelectedItem.Value;
            ilceler.Clear();
            ilce.Items.Clear();
            if (plaka == "44")
            {
                ilceler.AddRange(new List<ListItem> {
            new ListItem("Battalgazi", "1"),
            new ListItem("Yeşilyurt", "2"),
            new ListItem("Darende", "3"),
            new ListItem("Akçadağ", "4"),
            new ListItem("Doğanşehir", "5"),
            new ListItem("Kale", "6"),
            new ListItem("Pütürge", "7"),
            new ListItem("Yazıhan", "8"),
            new ListItem("Doğanyol", "9"),
            new ListItem("Arapgir", "10"),
            new ListItem("Hekimhan", "11"),
            new ListItem("Kuluncak", "12"),
            new ListItem("Arguvan", "13")
            });
            }

            if (plaka == "11")
            {
                ilceler.AddRange(new List<ListItem> {
            new ListItem("Merkez", "14"),
            new ListItem("Bozüyük", "15"),
            new ListItem("Gölpazarı", "16"),
            new ListItem("İnhisar", "17"),
            new ListItem("Osmaneli", "18"),
            new ListItem("Pazaryeri", "19"),
            new ListItem("Söğüt", "20"),
            new ListItem("Yenipazar", "21")
            });
            };
            lbl_bilgi.Text = ilceler.Count+" ilçe listelendi.";
            //Verilerin Dropdown'a eklenmesi
            foreach (ListItem Ilce in ilceler)
            {
                ilce.Items.Add(Ilce);
            }

        }

    }
}
