<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ileri_web_programlama.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/custom.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" class="form" runat="server">
        <header>
            <nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.aspx">Giriş</a>
                    <button class="navbar-toggler text-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    </div>
                </div>
            </nav>

        </header>
        <main>
            <div class="container mt-5">
                <div class="row">
                    <div class="col-md-3">
                        <ul class="list-group">
                            <li class="list-group-item bg-dark text-light">Uygulamalar</li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="hafta2_bootstrap.aspx">Hafta 2 (U1 - Bootstrap)</a>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="hafta2_isim.aspx">Hafta 2 (U2 - İsim Yazdırma)</a>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="hafta3_hesap_makinasi.aspx">Hafta 3 (U3 - Hesap Makinası)</a>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta3_tablo_olusturma.aspx">Hafta 3 (U4 - Tablo Oluşturma)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta4_listbox.aspx">Hafta 4 (U5 - Listbox)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta4_listbox2.aspx">Hafta 4 (U6 - Listbox - 2)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta4_dropdown.aspx">Hafta 4 (U7 - Dropdown)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta4_dropdown2.aspx">Hafta 4 (U8 - Dropdown - 2)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta5_tarih.aspx">Hafta 5 (U9 - Calendar)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta5_wizard_fileupload.aspx">Hafta 5 (U10 - Wizard/File Upload)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta6_check_radio.aspx">Hafta 6 (U11 - CheckBox/Radio Button)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta6_validationForms.aspx">Hafta 6 (U12 - Validation)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a href="hafta7_db.aspx">Hafta 7 (U13 - Veritabanı-1)</a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center bg-dark">
                                    <a class="text-white" href="kaynakca.aspx">Kaynakça</a>
                                </li>
                        </ul>
                    </div>
                    <div class="col-md-9">
                        <h1 class="display-5">Kaynakça</h1>
                        <ul class="list-group">
                            <li class="list-group-item">https://stackoverflow.com/questions/19798685/how-to-create-a-link-in-gridview-in-asp-net
                            </li>
                            <li class="list-group-item">https://learn.microsoft.com/en-us/dotnet/api/system.reflection.propertyinfo.getvalue?view=net-7.0
                            </li>
                            <li class="list-group-item">https://stackoverflow.com/questions/7406961/how-to-call-a-variable-in-code-behind-to-aspx-page
                            </li>
                            <li class="list-group-item">https://learn.microsoft.com/tr-tr/aspnet/web-forms/overview/data-access/custom-formatting/using-templatefields-in-the-gridview-control-cs
m</li>
                            <li class="list-group-item">https://www.gencayyildiz.com/blog/asp-net-gridview-css-template-giydirelim/
                            </li>
                            <li class="list-group-item">https://stackoverflow.com/questions/19089172/gridview-change-button-text-and-link-on-page-load
                            </li>
                            <li class="list-group-item">https://stackoverflow.com/questions/1850247/adding-link-column-to-asp-net-gridview
                            </li>
                            <li class="list-group-item">https://bidb.itu.edu.tr/seyir-defteri/blog/2013/09/06/gridview(izgara-g%C3%B6r%C3%BCn%C3%BCm%C3%BC)-kontrol%C3%BC
m</li>
                            <li class="list-group-item">https://stackoverflow.com/questions/9956180/get-posted-value-in-c-sharp-asp-net
                            </li>
                            <li class="list-group-item">https://uzmanim.net/soru/bu-command-ile-iliskili-oncelikle-kapatilmasi-gereken-acik-bir-datareader-zaten-var-hatasi/190
                            </li>
                            <li class="list-group-item">https://social.msdn.microsoft.com/Forums/tr-TR/1e8c34be-eeb6-416b-ba5b-5e1ddd923e9a/c-quotncelikle-kapatlmas-gereken-ak-bir-datareader-zaten-varquot-hatasi-acl-yardim?forum=yazilimgeneltr
                            </li>
                            <li class="list-group-item">https://antinsanlar.blogspot.com/2017/12/birden-cok-sqldatareader-birlikte.html
                            </li>
                            <li class="list-group-item">https://cahap.com/commandle-iliskili-kapatilmasi-gereken-acik-datareader-var/
                            </li>
                            <li class="list-group-item">https://learn.microsoft.com/en-us/dotnet/api/system.collections.specialized.namevaluecollection.getvalues?redirectedfrom=MSDN&view=net-7.0#System_Collections_Specialized_NameValueCollection_GetValues_System_String_
                            </li>
                            <li class="list-group-item">https://stackoverflow.com/questions/7406961/how-to-call-a-variable-in-code-behind-to-aspx-page
                            </li>
                            <li class="list-group-item">https://learn.microsoft.com/tr-tr/visualstudio/ide/quickstart-ide-orientation?f1url=%3FappId%3DDev16IDEF1%26l%3Dtr-TR%26k%3Dk(MSDNSTART)%26rd%3Dtrue&view=vs-2022
                            </li>
                            <li class="list-group-item">https://www.yazilimkodlama.com/kategori/asp/
                            </li>
                            <li class="list-group-item">https://stackoverflow.com/questions/3813934/change-single-url-query-string-value
                            </li>
                            <li class="list-group-item">https://getbootstrap.com/docs/5.3/examples/
                            </li>
                            <li class="list-group-item">https://www.c-sharpcorner.com/UploadFile/1e050f/edit-and-update-record-in-gridview-in-Asp-Net/
                            </li>
                            <li class="list-group-item">https://getbootstrap.com/docs/5.3/getting-started/introduction/
                            </li>
                            <li class="list-group-item">https://stackoverflow.com/questions/19798685/how-to-create-a-link-in-gridview-in-asp-net
                            </li>
                            <li class="list-group-item">https://www.gencayyildiz.com/blog/category/asp-net/
                            </li>
                            <li class="list-group-item">https://stackoverflow.com/questions/4630249/get-url-without-querystring
                            </li>
                            <li class="list-group-item">https://stackoverflow.com/questions/9945409/how-do-i-fix-the-error-named-pipes-provider-error-40-could-not-open-a-connec
                            </li>
                            <li class="list-group-item">https://learn.microsoft.com/en-us/answers/questions/81835/error-40-could-not-open-a-connection-to-sql-server
                            </li>
                            <li class="list-group-item">https://social.technet.microsoft.com/Forums/tr-TR/6737ca0b-7665-4f68-bd35-d84fc003d3b2/quoterror-40-sql-server-iin-balant-alamadquot-hatas?forum=sqlservertr
                            </li>
                            <li class="list-group-item">https://www.teknologweb.com/asp-net-veritabani-islemleri
                            </li>
                            <li class="list-group-item">https://www.teknologweb.com/asp-net-veritabani-baglantisi
                            </li>
                            <li class="list-group-item">https://turkegitim.net/Ders_Notlari_Ve_Ornekler/ASP.NET/Tek_Sayfada_Veritabani_Kayit_Islemleri_Listeleme_Ekleme_Degistirme_Silme
                            </li>
                            <li class="list-group-item">https://www.yazilimkodlama.com/c-2/asp-net-ile-sql-server-veritabani-baglantisi-olusturma-resimli-anlatim/
                            </li>
                            <li class="list-group-item">https://www.mehmetkirazli.com/asp-net-veritabani-baglantisi/
                            </li>
                            <li class="list-group-item">https://stackoverflow.com/questions/48701644/using-parsley-js-validation-with-asp-net-form
                            </li>

                        </ul>
                     
                    </div>
                </div>
        </main>
        <footer class="py-3 my-4">
            <div class="container">
                <p class="text-center text-muted">
                    2023, Pazaryeri MYO.
                </p>
            </div>

        </footer>

    </form>

</body>
<script type="text/javascript" src="../js/bootstrap.bundle.min.js"></script>
</html>
