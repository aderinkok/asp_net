using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hafta1
{
    public partial class hafta7_db : System.Web.UI.Page
    {

        private string dbM;
        public string Dbm { get { return dbM; } }
        protected void Page_Load(object sender, EventArgs e)
        {
            dbM = Db.baglantiKontrol();
            SqlCommand cmd = new SqlCommand("SELECT * FROM ornekTablo", Db.baglanti);
            if (!IsPostBack)
            {
                SqlDataReader dr = cmd.ExecuteReader();
                veriler2.DataSource = dr;
                veriler2.DataBind();
            }
            if (Session["IslemSonuc"] != null)
            {
                lbl_bilgi.Text = Session["IslemSonuc"].ToString();
                Session.Remove("IslemSonuc");
            }

            /* 
             * ##### Alternatif yöntem #####
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "SELECT * FROM ornekTablo"; 
            komut.Connection = Db.baglanti;
            SqlDataReader dr;
            dr = komut.ExecuteReader();

            veriler.DataSource= dr;
            veriler.DataBind();
            
            */
            if (!IsPostBack)
            {
                string idDegeri = Request.QueryString["id"];
                string islem = Request.QueryString["islem"];
                if (idDegeri != null)
                {
                    txt_kimlik.Value = idDegeri; //hidden
                    if (islem == "duzenle")
                    {
                        SqlCommand tekilVeri = new SqlCommand("SELECT * FROM ornekTablo WHERE id=@id", Db.baglanti);
                        tekilVeri.Parameters.AddWithValue("@id", idDegeri);
                        SqlDataReader rd = tekilVeri.ExecuteReader();
                        while (rd.Read())
                        {
                            txt_kimlik.Value = rd[0].ToString();
                            txt_ad.Text = rd[1].ToString();
                            txt_soyad.Text = rd[2].ToString();
                        }


                    }
                    if (islem == "sil")
                    {
                        sil(Convert.ToInt16(idDegeri));
                    }

                }
            }


        }

        private void sil(int id)
        {

            SqlCommand silKomutu = new SqlCommand("DELETE FROM ornekTablo WHERE id=@id", Db.baglanti);
            silKomutu.Parameters.AddWithValue("@id", id);
            silKomutu.ExecuteNonQuery();
            Session.Add("IslemSonuc", id + " nolu kayıt Silindi! ");
            yonlendir();
            // Response.Redirect("derinkok.com.tr");
        }
        private void guncelle(int id,string ad,string soyad)
        {
     
            SqlCommand guncelleKomutu = new SqlCommand("UPDATE ornekTablo SET ad=@ad,soyad=@soyad WHERE id=@id", Db.baglanti);
            guncelleKomutu.Parameters.AddWithValue("@ad", ad);
            guncelleKomutu.Parameters.AddWithValue("@soyad", soyad);
            guncelleKomutu.Parameters.AddWithValue("@id", id);
            guncelleKomutu.ExecuteNonQuery();
            lbl_bilgi.Text = id + " nolu kayıt güncellendi! ";
            Session.Add("IslemSonuc", id + " nolu kayıt güncellendi! ");
            yonlendir();

        }
        private void yeni()
        {
            string ad = txt_ad.Text;
            string soyad = txt_soyad.Text;
            SqlCommand guncelleKomutu = new SqlCommand("INSERT ornekTablo VALUES(@ad,@soyad)", Db.baglanti);
            guncelleKomutu.Parameters.AddWithValue("@ad", ad);
            guncelleKomutu.Parameters.AddWithValue("@soyad", soyad);
            guncelleKomutu.ExecuteNonQuery();
            Session.Add("IslemSonuc", "Yeni kayıt oluşturuldu! ");
            yonlendir();
        }

        protected void kaydet_Click(object sender, EventArgs e)
        {
             if (Convert.ToInt16(txt_kimlik.Value) > -1)
            {
                guncelle(Convert.ToInt16(txt_kimlik.Value),txt_ad.Text,txt_soyad.Text);
            }
            else
            {
                yeni();
            }
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

    }
}