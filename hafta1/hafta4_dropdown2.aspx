<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta4_dropdown2.aspx.cs" Inherits="hafta1.hafta4_dropdown2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    4
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    8
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    İş başvuru formu. Dropdown, Button, Textbox ve Label kullanarak nesnelerin visible ve enabled özelliklerini kullanma. 
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
    <div class="row g-3">
        <div class="col-md-12">
            <label>Ad</label>
            <asp:TextBox runat="server" ID="ad" CssClass="form-control" placeholder="Ad" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-12">
            <label>Soyad</label>
            <asp:TextBox runat="server" ID="soyad" CssClass="form-control" placeholder="Soyad" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-12">
            <label>Yaş</label>
            <asp:TextBox runat="server" ID="yas" CssClass="form-control" placeholder="Yaşınız" MaxLength="3" TextMode="Number"></asp:TextBox>
        </div>
        <div class="col-md-12">
            <label>Cinsiyet</label>
            <asp:DropDownList runat="server" CssClass="form-control" ID="cinsiyet" OnSelectedIndexChanged="Cinsiyet_form_kontrol" AutoPostBack="true">
                <asp:ListItem Text="--Seçiniz--" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Kadın" Value="0"></asp:ListItem>
                <asp:ListItem Text="Erkek" Value="1"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-12" runat="server" id="askerlikPanel" visible="false">
            <label>Askerlik</label>
            <asp:DropDownList runat="server" CssClass="form-control" ID="askerlik">
                <asp:ListItem Text="--Seçiniz--" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Yaptı" Value="0"></asp:ListItem>
                <asp:ListItem Text="Tecilli" Value="1"></asp:ListItem>
                <asp:ListItem Text="Muaf" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-12">
            <label>Bilgilerimin KVKK kapsamında işlenmesini kabul ediyorum.</label>
            <asp:DropDownList runat="server" CssClass="form-control" ID="onay" AutoPostBack="true" OnSelectedIndexChanged="Onay_kontrol">
                <asp:ListItem Text="--Seçiniz--" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Evet" Value="1"></asp:ListItem>
                <asp:ListItem Text="Hayır" Value="0"></asp:ListItem>
            </asp:DropDownList>
        </div>



        <div class="col-md-12">
            <asp:Button runat="server" ID="kaydet" Text="Kaydet" CssClass="btn btn-primary" Enabled="false" OnClick="Kaydet" />
        </div>
          <div class="col-md-12">
              <asp:Label runat="server" ID="lbl_uyari" Text="" CssClass="alert alert-warning" />
        </div>

        <div class="col-md-6" runat="server" id="cikti" visible="false">Ad:</div>
        <div class="col-md-6" runat="server" id="cikti2" visible="false">
            <asp:Label runat="server" ID="lbl_ad" Text="" />
        </div>
        <div class="col-md-6" runat="server" id="cikti3" visible="false">Soyad:</div>
        <div class="col-md-6" runat="server" id="cikti4" visible="false">

            <asp:Label runat="server" ID="lbl_soyad" Text="" />
        </div>
        <div class="col-md-6" runat="server" id="cikti5" visible="false">Yaş:</div>
        <div class="col-md-6" runat="server" id="cikti6" visible="false">

            <asp:Label runat="server" ID="lbl_yas" Text="" />
        </div>
             <div class="col-md-6" runat="server" id="cikti7" visible="false">Askerlik Durum:</div>
        <div class="col-md-6" runat="server" id="cikti8" visible="false">

            <asp:Label runat="server" ID="lbl_askerlik" Text="" />
        </div>
   


    </div>

</asp:Content>
