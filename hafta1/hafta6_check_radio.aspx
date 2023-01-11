<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta6_check_radio.aspx.cs" Inherits="hafta1.hafta6_check_radio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    6
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    11
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    CheckBox, RadioButton
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <label>Ad</label>
                    <asp:TextBox runat="server" ID="ad" CssClass="form-control" placeholder="Adınız"></asp:TextBox>
                </div>
                <div class="col-md-12">
                    <label>Soyad</label>
                    <asp:TextBox runat="server" ID="soyad" CssClass="form-control" placeholder="Soyadınız"></asp:TextBox>
                </div>
                <div class="col-md-12">
                    <label>Cinsiyet (RadioButton)</label>
                    <asp:RadioButton runat="server" GroupName="cinsiyet" ID="r1" Text="Erkek" CssClass="form-control" />
                    <asp:RadioButton runat="server" GroupName="cinsiyet" ID="r2" Text="Kadın" CssClass="form-control" />
                </div>
                <div class="col-md-12">
                    <label>Cinsiyet (RadioButton Group)</label>
                    <asp:RadioButtonList runat="server" ID="rgC" CssClass="form-control">
                        <asp:ListItem Text="Erkek" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Kadın" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="col-md-12">
                    <label>Bildiğiniz Diller (CheckBox)</label>
                    <asp:CheckBox runat="server"  ID="dil1" CssClass="form-control" Text="PHP" />
                    <asp:CheckBox runat="server" ID="dil2" CssClass="form-control" Text="ASP.NET" />
                    <asp:CheckBox runat="server" ID="dil3" CssClass="form-control" Text="Node.js" />
                    <asp:CheckBox runat="server" ID="dil4" CssClass="form-control" Text="Python" />
                    <asp:CheckBox runat="server" ID="dil5" CssClass="form-control" Text="C++"  />
                    <asp:CheckBox runat="server" ID="dil6" Enabled="false" CssClass="form-control" Text="C#" />
                </div>
                <div class="col-md-12">
                    <label>Bildiğiniz Diller (CheckBox Group)</label>
                    <asp:CheckBoxList runat="server" ID="dil" CssClass="form-control">
                        <asp:ListItem Text="PHP" Value="1"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Node.js" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Python" Value="4"></asp:ListItem>
                        <asp:ListItem Text="C++" Value="5"></asp:ListItem>
                        <asp:ListItem Text="C#" Enabled="false" Value="6"></asp:ListItem>
                        
                    </asp:CheckBoxList>
                </div>
                <div class="col-md-12 mt-3">
                    <asp:Button runat="server" ID="kaydet" CssClass="btn btn-danger" Text="Kaydet" OnClick="kaydet_Click" />
                </div>
            </div>


        </div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="display-4">Çıktı</h1>
                </div>
                <div class="col-md-12">
                    <label class="badge bg-secondary">Ad</label>
                    <asp:Label runat="server" ID="lbl_ad"></asp:Label>
                </div>
                <div class="col-md-12">
                    <label class="badge bg-secondary">Soyad</label>
                     <asp:Label runat="server" ID="lbl_soyad"></asp:Label>
                </div>
                <div class="col-md-12">
                    <label class="badge bg-secondary">Cinsiyet (radioButton)</label>
                     <asp:Label runat="server" ID="lbl_cinsiyet_radioButton"></asp:Label>
                </div>
                <div class="col-md-12">
                    <label class="badge bg-secondary">Cinsiyet (radioGroup)</label>
                     <asp:Label runat="server" ID="lbl_cinsiyet_radioGroup"></asp:Label>
                </div>
                <div class="col-md-12">
                    <label class="badge bg-secondary">Dil (CheckBox)</label>
                     <asp:Label runat="server" ID="lbl_dil_checkbox"></asp:Label>
                </div>
                <div class="col-md-12">
                    <label class="badge bg-secondary">Dil (Checkbox Group)</label>
                     <asp:Label runat="server" ID="lbl_dil_checkboxGroup"></asp:Label>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
