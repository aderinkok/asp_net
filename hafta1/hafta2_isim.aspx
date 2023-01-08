<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta2_isim.aspx.cs" Inherits="ileri_web_programlama.hafta2_isim" %>

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

    <div class="row">
        <div class="col-md-12 mb-3">
            <label>İsminiz</label>
            <asp:TextBox ID="isim" runat="server" CssClass="form-control" placeholder="Adınızı yazın" AutoCompleteType="None"></asp:TextBox>
        </div>
        <div class="col-6 mb-3">
              <asp:Button ID="gonder" CssClass="btn btn-primary" Text="Gönder" runat="server" OnClick="isim_yazdirma" />
                           
        </div>
        <div class="col-6 mb-3">
             <asp:Button ID="btn_temizle" CssClass="btn btn-danger" Text="Temizle" runat="server" OnClick="temizle" />
        </div>
        <div class="col-md-12 mb-3">
                <h1 class="display-6">
        <asp:Label ID="lbl_ad" runat="server" Text=""></asp:Label>

    </h1>
        </div>
    </div>







</asp:Content>
