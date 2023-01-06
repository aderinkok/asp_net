<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta2_isim.aspx.cs" Inherits="hafta1.hafta2_isim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    2
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    2
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Label, Textbox ve Button kullanarak kullanıcının adı alınır ve "Merbaha [isim]" şeklinde yazdırılır.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
      <div class="form-group mb-2">
                            <label>İsminiz</label>
                            <asp:TextBox ID="isim" runat="server" CssClass="form-control" placeholder="Adınızı yazın" AutoCompleteType="None"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="gonder" CssClass="btn btn-primary" Text="Gönder" runat="server" OnClick="isim_yazdirma" />
                            <asp:Button ID="btn_temizle" CssClass="btn btn-danger" Text="Temizle" runat="server" OnClick="temizle" />
                        </div>

                        <h2>
                            <asp:Label ID="lbl_ad" runat="server" Text=""></asp:Label>

                        </h2>


</asp:Content>
