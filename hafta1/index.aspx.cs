﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hafta1.Properties
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void isim_yazdirma(object sender, EventArgs e)
        {
            lbl_ad.Text = "Merhaba "+isim.Text+".";
            isim.Text = "";
        }
        protected void temizle(object sender, EventArgs e)
        {
            lbl_ad.Text = "";
            isim.Text = "";
        }
    }
}