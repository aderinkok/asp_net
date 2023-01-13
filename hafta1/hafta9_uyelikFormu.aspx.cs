using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hafta1
{
    public partial class hafta9_uyelikFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridDoldur();

            if (!IsPostBack)
            {
                string idDegeri = Request.QueryString["id"];
                string islem = Request.QueryString["islem"];
                if (idDegeri != null)
                {
                    txt_id.Value = idDegeri; //hidden
                    if (islem == "duzenle")
                    {
                        SqlCommand tekilVeri = new SqlCommand("SELECT id,ad,mail FROM kullanici WHERE id=@id", Db.baglanti);
                        tekilVeri.Parameters.AddWithValue("@id", idDegeri);
                        SqlDataReader rd = tekilVeri.ExecuteReader();
                        while (rd.Read())
                        {
                            txt_id.Value = rd[0].ToString();
                            txt_ad.Text = rd[1].ToString();
                            txt_mail.Text = rd[2].ToString();
                        }


                    }
                    if (islem == "sil")
                    {
                        sil(Convert.ToInt16(idDegeri));
                    }

                }
            }

        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt16(txt_id.Value) > -1)
            {
                if(Dogrulama())
                guncelle(Convert.ToInt16(txt_id.Value));
            }
            else
            {
                if(Dogrulama())
                yeni();
            }

        }

        private void GridDoldur() {

            SqlCommand cmd = new SqlCommand("SELECT * FROM kullanici", Db.baglanti);
            if (!IsPostBack)
            {
                Db.baglantiKontrol();
                SqlDataReader dr = cmd.ExecuteReader();
                grd_kullanici.DataSource = dr;
                grd_kullanici.DataBind();
            }
            


        }

        private void sil(int id)
        {

            SqlCommand komut = new SqlCommand("DELETE FROM kullanici WHERE id=@id", Db.baglanti);
            komut.Parameters.AddWithValue("@id", id);
            komut.ExecuteNonQuery();
            Session.Add("IslemSonuc", id + " nolu kayıt Silindi! ");
            yonlendir();
        }
        private void guncelle(int id)
        {

            SqlCommand komut = new SqlCommand("UPDATE kullanici SET ad=@ad,mail=@mail,sifre=@sifre WHERE id=@id", Db.baglanti);
            komut.Parameters.AddWithValue("@ad", txt_ad.Text);
            komut.Parameters.AddWithValue("@mail", txt_mail.Text);
            komut.Parameters.AddWithValue("@sifre", txt_sifre.Text);
            komut.Parameters.AddWithValue("@id", id);
            komut.ExecuteNonQuery();
            lbl_bilgi.Text = id + " nolu kayıt güncellendi! ";
            Session.Add("IslemSonuc", id + " nolu kayıt güncellendi! ");
            yonlendir();

        }

        private void yeni()
        {

            SqlCommand komut = new SqlCommand("INSERT kullanici (ad,mail,sifre) VALUES(@ad,@mail,@sifre)", Db.baglanti);
            komut.Parameters.AddWithValue("@ad", txt_ad.Text);
            komut.Parameters.AddWithValue("@mail", txt_mail.Text);
            komut.Parameters.AddWithValue("@sifre", txt_sifre.Text);
            komut.ExecuteNonQuery();
            Session.Add("IslemSonuc", "Yeni kayıt oluşturuldu! ");
            yonlendir();
        }

        private void yonlendir()
        {
            if (Request.Url.Query != null && Request.Url.Query != "")
            {
                Response.Redirect(Request.Url.AbsoluteUri.Replace(Request.Url.Query, String.Empty));
            }
            else
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }

        }

        private bool Dogrulama()
        {
            if (txt_ad.Text=="" || txt_mail.Text==""|| txt_sifre.Text=="")
            {
                lbl_bilgi.Text = "Ad, Mail ve Şifre alanları gereklidir.";
                return false;
            }
            if (txt_ad.Text.Length>50 || txt_mail.Text.Length>50|| txt_sifre.Text.Length > 50)
            {
                lbl_bilgi.Text = "Ad, Mail ve Şifre alanları en fazla 50 karakter uzunluğunda olmalıdır.";
                return false;
            }
            if (txt_sifre.Text!=txt_sifre2.Text)
            {
                lbl_bilgi.Text = "Şifre ve Şifre tekrar alanları aynı olmalıdır.";
                return false;
            }
            if (txt_sifre.Text.Length<6)
            {
                lbl_bilgi.Text = "Şifre uzunluğu en az 6 karakter olmalıdır.";
                return false;
            }

            return true;
        }
    }
}