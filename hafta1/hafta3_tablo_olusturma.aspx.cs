using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ileri_web_programlama
{
    public partial class hafta3_tablo_olusturma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void TabloOlustur(object sender, EventArgs e)
        {
            lbl_bilgi.Text = "";
            tablo1.BorderStyle = BorderStyle.Solid;
            tablo1.BorderColor = Color.Black;
            int satirS, sutunS = 0;
            satirS = Convert.ToInt16(satir.Text);
            sutunS = Convert.ToInt16(sutun.Text);
            if(satirS>15)
            { satirS = 15;
                lbl_bilgi.Text += "<p class=\"alert alert-info\">Maksimum satır sayısı 15'tir.</p>";
            }
            if (sutunS > 15)
            {
                sutunS = 15;
                lbl_bilgi.Text += "<p class=\"alert alert-info\">Maksimum sütun sayısı 15'tir.</p>";
            }
            for (int i = 1; i <= satirS; i++)
            {
                TableRow tSatir = new TableRow();
                tablo1.Controls.Add(tSatir);
                for(int j = 0; j < sutunS; j++)
                {
                    TableCell hucre = new TableCell();
                    hucre.Text = "R-"+i+" / " + "C-"+(j+1);
                    hucre.BorderColor = Color.Black;
                    hucre.BorderStyle = BorderStyle.Solid;
                    hucre.BorderWidth = 1;
                    tSatir.Controls.Add(hucre);
                }
            }
        }
    }
}