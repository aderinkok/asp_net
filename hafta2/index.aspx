<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="hafta3.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/custom.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 d-flex justify-content-center">
                <div class="jumbotron">
                    <h1 class="display-4">Hafta 2</h1>
                    <p class="lead">Hesap Makinası uygulaması.</p>
                    <hr class="my-4">
                    <p>Button, Textbox ve Label araçlarını kullanarak hesap makinası oluşturma (4 işlem).</p>

                </div>
            </div>
            <div class="col-lg-3"></div>
            <div class="col-lg-6 d-flex justify-content-center">
                <table>
                    <tr>
                        <td colspan="4">Hesap Makinası</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:TextBox runat="server" ID="deger" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="silme" Text="C" Width="100%" Height="50px" OnClick="Silme_click" />
                        </td>
                        <td colspan="2">
                            <asp:Button runat="server" ID="esittir" Text="=" Width="100%" Height="50px" OnClick="Esittir_click" />
                        </td>
                        <td>
                            <asp:Button runat="server" ID="bolme" Text="/" Width="100%" Height="50px" OnClick="Bolme_click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="yedi" Text="7" Width="100%" Height="50px" OnClick="Yedi_click" /></td>
                        <td>
                            <asp:Button runat="server" ID="sekiz" Text="8" Width="100%" Height="50px" OnClick="Sekiz_click" /></td>
                        <td>
                            <asp:Button runat="server" ID="dokuz" Text="9" Width="100%" Height="50px" OnClick="Dokuz_click" /></td>
                        <td>
                            <asp:Button runat="server" ID="carpi" Text="X" Width="100%" Height="50px" OnClick="Carpi_click" /></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="dort" Text="4" Width="100%" Height="50px" OnClick="Dort_click" /></td>
                        <td>
                            <asp:Button runat="server" ID="bes" Text="5" Width="100%" Height="50px" OnClick="Bes_click" /></td>
                        <td>
                            <asp:Button runat="server" ID="alti" Text="6" Width="100%" Height="50px" OnClick="Alti_click" /></td>
                        <td>
                            <asp:Button runat="server" ID="eksi" Text="-" Width="100%" Height="50px" OnClick="Eksi_click" /></td>
                    </tr>
                    <tr>
                                   <td>
                            <asp:Button runat="server" ID="bir" Text="1" Width="100%" Height="50px" OnClick="Bir_click" /></td>
                        <td>
                            <asp:Button runat="server" ID="iki" Text="2" Width="100%" Height="50px" OnClick="Iki_click" /></td>
                        <td>
                            <asp:Button runat="server" ID="uc" Text="3" Width="100%" Height="50px" OnClick="Uc_click" /></td>
                        <td>
                            <asp:Button runat="server" ID="arti" Text="+" Width="100%" Height="50px" OnClick="Arti_click" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div class="col-lg-3"></div>
        </div>
        </div>


    </form>
</body>
</html>
