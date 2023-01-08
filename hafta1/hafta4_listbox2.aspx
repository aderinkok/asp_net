<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta4_listbox2.aspx.cs" Inherits="ileri_web_programlama.hafta4_listbox2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    4
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    6
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Textbox, Listbox, Button kullanarak, Textbox'a girilen metni Listbox'a ekleme ve Listbox'dan seçilen item'i silmek.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
    <div class="row g-3">
  <div class="col-md-5">
    <label class="form-label">Şehirler</label>
    <asp:ListBox runat="server" ID="sehirList" CssClass="form-control" SelectionMode="Single" Width="200px">
        <asp:ListItem Value="11">Bilecik</asp:ListItem>

      </asp:ListBox>
      <small class="form-text text-muted"><asp:Label runat="server" ID="lbl_sehirListMan" Text=""></asp:Label></small>
  </div>

  <div class="col-12">
      <asp:Label runat="server" ID="uyari" Text=""></asp:Label>
  </div>
  <div class="col-12">
      <asp:Textbox runat="server" ID="metin" cssClass="form-control" ></asp:Textbox>
  </div>
  <div class="col-12">
            <asp:Button runat="server" ID="ekle" cssClass="btn btn-success" Text="Ekle" onClick="Ekle" />
      <asp:Button runat="server" ID="sil" CssClass="btn btn-danger" Text="Sil" OnClick="Sil" />
  </div>
</div>
</asp:Content>
