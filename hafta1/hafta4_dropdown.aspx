<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta4_dropdown.aspx.cs" Inherits="hafta1.hafta4_dropdown" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    4
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    7
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Dropdown
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
    <div class="row g-3">
        <div class="col-md-12">
            <label class="form-label">İl</label>
            <asp:DropDownList runat="server" ID="il" CssClass="form-control" OnSelectedIndexChanged="IlceGetir" AutoPostBack="true">
                <asp:ListItem Value="-1" Text="--İl seçin--"></asp:ListItem>
            </asp:DropDownList>
        </div>
         <div class="col-md-12">
            <label class="form-label">İlçe</label>
            <asp:DropDownList runat="server" ID="ilce" CssClass="form-control">
                <asp:ListItem Value="-1" Text="--İlçe seçin--"></asp:ListItem>
               

            </asp:DropDownList>
        </div>
        <div class="col-md-12">
            <asp:Label runat="server" ID="lbl_bilgi" Text=""></asp:Label>
        </div>
    </div>

</asp:Content>
