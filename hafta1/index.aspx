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
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Dropdown
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item " href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled">Disabled</a>
                            </li>
                        </ul>

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
                        </ul>
                    </div>
                    <div class="col-md-6">
                    </div>
                    <div class="col-md-3">
                    </div>
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
