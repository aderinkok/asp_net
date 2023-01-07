<%@ Page Language="C#" AutoEventWireup="true"   MasterPageFile="~/uygulama.Master" CodeBehind="hafta3_hesap_makinasi.aspx.cs" Inherits="ileri_web_programlama.hafta3_hesap_makinasi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    3
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    3
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Hesap Makinası uygulaması. Button, Textbox ve Label araçlarını kullanarak hesap makinası oluşturma (4 işlem).
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
    
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
                                <asp:Button runat="server" ID="silme" Text="CE" Width="100%" Height="50px" OnClick="Silme_click" />
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
                            <td colspan="4">
                                <asp:Button runat="server" ID="sifir" Text="0" Width="100%" Height="50px" OnClick="Sifir_click" />
                                    </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:Label runat="server" ID="sonuc" Text=""></asp:Label></td>
                        </tr>
                    </table>

</asp:Content>
