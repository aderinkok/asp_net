<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta5_tarih.aspx.cs" Inherits="hafta1.hafta5_tarih" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Uygulama 9 - Calendar
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    5
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    9
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Bugünün tarihini elde etme ve Calendar aracı kullanılarak iki tarih arasındaki farkın bulunması. Calendar, Textbox, Label kullanılarak.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
    <div class="row">
        <div class="col-md-6">
            <label class="mb-3">Başlangıç Tarihi</label>
            <asp:Calendar runat="server" ID="baslangic_tarih" OnDayRender="baslangic_tarih_DayRender"></asp:Calendar>
        </div>
        <div class="col-md-6">
            <label class="mb-3">Bitiş Tarihi</label>
            <asp:Calendar runat="server" ID="bitis_tarih" onDaYRender="bitis_tarih_DayRender"></asp:Calendar>

        </div>
        <div class="col-md-6">
            <asp:Button runat="server" ID="fark_hesapla" OnClick="fark_hesapla_Click" cssClass="btn btn-info mt-3" Text="İki tarih arasındaki farkı hesapla"/>
        </div>
 
        <div class="col-md-12">
            <asp:Label runat="server" ID="lbl_bilgi" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
