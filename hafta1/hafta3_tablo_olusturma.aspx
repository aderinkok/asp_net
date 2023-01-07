<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/uygulama.Master" CodeBehind="hafta3_tablo_olusturma.aspx.cs" Inherits="ileri_web_programlama.hafta3_tablo_olusturma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    3
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    4
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
   Tablo Oluşturma. Button, Textbox ve Label araçlarını kullanarak satır ve sütun sayı bilgisi alındıktan sonra HTML tagları ile tablo oluşturma(Satır-Sütun limit 15).
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
     <table>
                        <tr>
                            <td colspan="2">Tablo oluşturma</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbl_bilgi" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="satir" Height="30px" Width="200px" placeholder="Satır Sayısı" CssClass="form-control"></asp:TextBox>
                            </td>
                              <td>
                                <asp:TextBox runat="server" ID="sutun" Height="30px" Width="200px" placeholder="Sütun Sayısı" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                           <tr>
                            <td colspan="2">
                                <asp:Button runat="server" ID="Button1" CssClass="btn btn-primary mt-2" Text="Oluştur" width="100%" OnClick="TabloOlustur" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Table ID="tablo1" runat="server" ></asp:Table>
                            </td>
                        </tr>
                   
                    </table>


</asp:Content>
