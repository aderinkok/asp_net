<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta4_listbox.aspx.cs" Inherits="ileri_web_programlama.hafta4_dropdownlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Dropdownlist 4. Hafta
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="hafta_s" runat="server">
    4
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_no" runat="server">
    5
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Listbox,Button, Label kullanarak tercih sistemi oluşturma (En fazla 5 tercih yapılabilir.
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ana_bolum" runat="server">
<div class="row g-3">
  <div class="col-md-5">
    <label class="form-label">Şehirler</label>
    <asp:ListBox runat="server" ID="sehirListMan" CssClass="form-control" SelectionMode="Multiple" >
        <asp:ListItem Value="11">Bilecik</asp:ListItem>
        <asp:ListItem Value="16">Bursa</asp:ListItem>
        <asp:ListItem Value="26">Eskişehir</asp:ListItem>
        <asp:ListItem Value="34">İstanbul</asp:ListItem>
        <asp:ListItem Value="6">Ankara</asp:ListItem>
        <asp:ListItem Value="35">İzmir</asp:ListItem>
        <asp:ListItem Value="23">Elazığ</asp:ListItem>
        <asp:ListItem Value="44">Malatya</asp:ListItem>
        <asp:ListItem Value="2">Adıyaman</asp:ListItem>
        <asp:ListItem Value="61">Trabzon</asp:ListItem>
        <asp:ListItem Value="31">Hatay</asp:ListItem>
      </asp:ListBox>
      <small class="form-text text-muted"><asp:Label runat="server" ID="lbl_sehirListMan" Text=""></asp:Label></small>
  </div>
    <div class="col-md-2">
        <div class="row mt-5">
<div class="col-12"><asp:Button runat="server" CssClass="btn btn-secondary" Text=">" ID="secim_ekle" OnClick="SecimEkle" /></div>
<div class="col-12"><asp:Button runat="server" CssClass="btn btn-secondary" Text="<" ID="secim_cikart" OnClick="SecimCikart" /></div>
</div>
    </div>
    <div class="col-md-5">
    <label class="form-label">Seçilen şehirler</label>
    <asp:ListBox runat="server" ID="secilenler" CssClass="form-control" SelectionMode="Multiple">
      </asp:ListBox>
      <small class="form-text text-muted"><asp:Label runat="server" ID="lbl_secilenler" Text=""></asp:Label></small>
  </div>
  <div class="col-12">
      <asp:Label runat="server" ID="uyari" Text=""></asp:Label>
  </div>
    </div>
</asp:Content>
