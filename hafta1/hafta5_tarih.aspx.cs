using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hafta1
{
    public partial class hafta5_tarih : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_bilgi.Text = "Bugünün tarihi " + DateTime.Now.ToString("D");

        }

        protected void fark_hesapla_Click(object sender, EventArgs e)
        {
       
            lbl_bilgi.Text = baslangic_tarih.SelectedDate.ToString("D")+" tarihi ile "+ bitis_tarih.SelectedDate.ToString("D") + " tarihi arasında "+ Convert.ToString(Math.Abs((bitis_tarih.SelectedDate- baslangic_tarih.SelectedDate).TotalDays)+ " gün var." );
        
        }
 
        protected void baslangic_tarih_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsToday)
            {
                e.Cell.Text = "<a href=\""+e.SelectUrl+"\" title=\"Bugün\">•</a>";
            }
        }

        protected void bitis_tarih_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsToday)
            {
                e.Cell.Text = "<a href=\"" + e.SelectUrl + "\" title=\"Bugün\">•</a>";
            }
        }
    }
}