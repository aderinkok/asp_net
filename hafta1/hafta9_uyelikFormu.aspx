<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta9_uyelikFormu.aspx.cs" Inherits="hafta1.hafta9_uyelikFormu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    9
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    14
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Üyelik formu, Textbox, Label, button, gridview ve doğrulama(validation) kullanarak.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
    <div class="row">
        <div class="col-md-12"></div>
        <div class="col-md-12">
            <label>Ad*</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="txt_ad" MaxLength="50"></asp:TextBox>
            <asp:HiddenField runat="server" ID="txt_id" Value="-1" />
        </div>
        <div class="col-md-12">
            <label>E-Mail*</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="txt_mail" MaxLength="50" TextMode="Email"></asp:TextBox>
        </div>
        <div class="col-md-12">
            <label>Şifre*</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="txt_sifre" MaxLength="50" TextMode="Password"></asp:TextBox>
        </div>
        <div class="col-md-12">
            <label>Şifre Tekrar*</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="txt_sifre2" MaxLength="50" TextMode="Password"></asp:TextBox>
        </div>
        <div class="col-md-12 mt-2 mb-2">
            <asp:Button runat="server" ID="btn_kaydet" Text="Kaydet" CssClass="btn btn-outline-dark" OnClick="btn_kaydet_Click" />
        </div> 
        <div class="col-md-12 mt-2 mb-2">
            <asp:Label runat="server" ID="lbl_bilgi" Text="" />
        </div>
            <div class="col-md-12 mt-5">
    <div class="row">
        <div class="col-md-12">
            <h1 class="display-5">Kullanıcılar</h1>
            <asp:GridView runat="server" ID="grd_kullanici" CssClass="table table-striped" AutoGenerateColumns="false" EmptyDataText="Kullanıcı bulunamadı.">
                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lbl_id" Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ad">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lbl_ad" Text='<%# Eval("ad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="E-Mail">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lbl_mail" Text='<%# Eval("mail") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Oluşturulma Tarihi">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lbl_tarih" Text='<%# Eval("olusturulma_tarihi") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="İşlemler">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="link_duzenle" Text="Düzenle" CssClass="btn btn-outline-warning" NavigateUrl='<%# Eval("id","?id={0}&islem=duzenle") %>'></asp:HyperLink>
                            <asp:HyperLink runat="server" ID="link_sil" Text="Sil" CssClass="btn btn-outline-danger" NavigateUrl='<%# Eval("id","?id={0}&islem=sil") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </div>
    </div>

</asp:Content>
