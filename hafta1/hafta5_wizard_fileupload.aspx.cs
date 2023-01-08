using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hafta1
{
    public partial class hafta5_wizard_fileupload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (container.ActiveViewIndex == 0)
            {
                ileri.Visible = true;
                geri.Visible = false;
            }
            else if (container.ActiveViewIndex>0)
            {
                ileri.Visible = false;
                geri.Visible = true;
            }



        }

        protected void geri_Click(object sender, EventArgs e)
        {
            if (container.ActiveViewIndex != 0)
                container.ActiveViewIndex = container.ActiveViewIndex - 1;
        }

        protected void ileri_Click(object sender, EventArgs e)
        {
            if (container.Views.Count - 1 != container.ActiveViewIndex)
                container.ActiveViewIndex = container.ActiveViewIndex + 1;
        }

        protected void container_ActiveViewChanged(object sender, EventArgs e)
        {
            if (container.ActiveViewIndex == 0)
            {
                ileri.Visible = true;
                geri.Visible = false;
            }
            else if (container.ActiveViewIndex > 0)
            {
                ileri.Visible = false;
                geri.Visible = true;
            }

        }

        protected void kaydet_Click(object sender, EventArgs e)
        {
            // resim.SaveAs(Server.MapPath("resim/" + resim.FileName));
            if (container.Views.Count - 1 != container.ActiveViewIndex)
                container.ActiveViewIndex = container.ActiveViewIndex + 1;
            if (resim.HasFile)
            {
                try
                {
                    if (resim.PostedFile.ContentType == "image/jpeg")
                    {
                        string filename = Path.GetFileName(resim.FileName);
                        if (filename != "")
                        {
                            resim.SaveAs(Server.MapPath("~/images/") + filename);
                            lbl_bilgi.Text = filename + " dosyası yüklendi!";
                            lbl_ad.Text = ad.Text;
                            lbl_soyad.Text = soyad.Text;
                            lbl_adres.Text = adres.Text;
                            resim_show.ImageUrl = "/images/" + filename;
                            resim_alternatif.Src = "/images/" + filename;
                  

                        }


                    }
                    else
                        lbl_bilgi.Text = "JPEG formatında görsel yüklenmelidir.";
                }
                catch (Exception h)
                {
                    lbl_bilgi.Text = "Dosya yüklenemedi: " + h.Message;
                }
            }
            else
            {
                lbl_bilgi.Text = "Dosya bulunamadı.";
                lbl_bilgi.Text = ad.Text + " " + soyad.Text;
            }

        }
    }
}
