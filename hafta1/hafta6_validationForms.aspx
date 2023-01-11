<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta6_validationForms.aspx.cs" Inherits="hafta1.hafta6_validationForms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    6
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    12
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Kullanıcı oluşturma - Validation yapısı ile (alanların ihtiyacına göre), Textbox, label, button, checkbox, listbox, 
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
    <div class="row">
        <div class="col-md-12">
            <label>Ad*</label>
            <asp:TextBox runat="server" ID="ad" CssClass="form-control" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="bosluk_valid" ErrorMessage="Boş bırakmayınız." ControlToValidate="ad" CssClass="badge bg-danger"></asp:RequiredFieldValidator>

        </div>
        <div class="col-md-12">
            <label>Soyad*</label>
            <asp:TextBox runat="server" ID="soyad" CssClass="form-control" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="bosluk_valid2" ErrorMessage="Boş bırakmayınız." ControlToValidate="soyad" CssClass="badge bg-danger"></asp:RequiredFieldValidator>

        </div>
        <div class="col-md-12">
            <label>TC Kimlik No*</label>
            <asp:TextBox runat="server" ID="tc" CssClass="form-control" MaxLength="11"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="bosluk_valid3" ErrorMessage="Boş bırakmayınız." ControlToValidate="tc" CssClass="badge bg-danger"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="tcC" runat="server" ErrorMessage="Çİft olmalı" CssClass="badge bg-danger" ControlToValidate="tc" OnServerValidate="Denetimcift"></asp:CustomValidator>
            <asp:CustomValidator ID="tc11" runat="server" CssClass="badge bg-danger" ErrorMessage="11 Hane olmalı" ControlToValidate="tc" OnServerValidate="Denetim11"></asp:CustomValidator>
            <asp:CustomValidator ID="tc0" runat="server" CssClass="badge bg-danger" ErrorMessage="0 olmamalı" ControlToValidate="tc" OnServerValidate="Denetim0"></asp:CustomValidator>

        </div>
        <div class="col-md-12">
            <label>E-mail*</label>
            <asp:TextBox runat="server" ID="mail" CssClass="form-control" TextMode="Email" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="bosluk_valid4" ErrorMessage="Boş bırakmayınız." ControlToValidate="mail" CssClass="badge bg-danger"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="mailC" CssClass="badge bg-danger" runat="server" ErrorMessage="Mail formatına uygun giriş yapın" ControlToValidate="mail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>


        </div>
        <div class="col-md-12">
            <label>Telefon*</label>
            <asp:TextBox runat="server" ID="telefon" CssClass="form-control" TextMode="Phone" MaxLength="11"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="bosluk_valid5" ErrorMessage="Boş bırakmayınız." ControlToValidate="telefon" CssClass="badge bg-danger"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="telefonC" CssClass="badge bg-danger" runat="server" ErrorMessage="05xxxxxxxxx şeklinde giriş yapın." ControlToValidate="telefon" ValidationExpression="(05(\d{9}))"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-12">
            <label>Cinsiyet*</label>
            <asp:RadioButtonList runat="server" ID="cinsiyet" CssClass="form-control" ValidationGroup="">
                <asp:ListItem Value="0" Text="Kadın"></asp:ListItem>
                <asp:ListItem Value="1" Text="Erkek"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass="badge bg-danger" ErrorMessage="Cinsiyet seçin." ControlToValidate="cinsiyet" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>

        </div>
        <div class="col-md-12">
            <label>Öğrenim Gördüğünüz Bölüm*</label>
            <asp:DropDownList runat="server" ID="bolum" CssClass="form-control" ValidationGroup="">
                <asp:ListItem Text="--Seçiniz--" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Bilgisayar Programcılığı" Value="0"></asp:ListItem>
                <asp:ListItem Text="İnternet ve Ağ Teknolojileri" Value="1"></asp:ListItem>
                <asp:ListItem Text="Web Tasarım ve Kodlama" Value="2"></asp:ListItem>
            </asp:DropDownList>
            <asp:CustomValidator ID="CustomValidator3" runat="server" CssClass="badge bg-danger" ErrorMessage="Bölüm seçin." ControlToValidate="bolum" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>

        </div>
        <div class="col-md-12">
            <label><b>Bildiğiniz Programlama Dilleri*</b></label>
            <asp:CheckBoxList runat="server" ID="dil" CssClass="form-control">
                <asp:ListItem Value="1" Text="ASP.NET"></asp:ListItem>
                <asp:ListItem Value="1" Text="ASP.NET"></asp:ListItem>
                <asp:ListItem Value="2" Text="PHP"></asp:ListItem>
                <asp:ListItem Value="3" Text="C++"></asp:ListItem>
                <asp:ListItem Value="4" Text="Python"></asp:ListItem>
                <asp:ListItem Value="5" Text="Pascal"></asp:ListItem>
            </asp:CheckBoxList>
            <asp:CustomValidator ID="CustomValidator2" runat="server" CssClass="badge bg-danger" ErrorMessage="En az bir dil seçin." ClientValidationFunction="ValidateCheckBoxList"></asp:CustomValidator>

        </div>
        <div class="col-md-12">
            <asp:Button CssClass="btn btn-block btn-outline-success" runat="server" ID="kaydet" OnClick="kaydet_Click" Text="Kaydet" />
        </div>
    </div>

    
<script type="text/javascript">
    function ValidateCheckBoxList(sender, args) {
        var checkBoxList = document.getElementById("<%=dil.ClientID %>");
        var checkboxes = checkBoxList.getElementsByTagName("input");
        var isValid = false;
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                isValid = true;
                break;
            }
        }
        args.IsValid = isValid;
    }
</script>

</asp:Content>
