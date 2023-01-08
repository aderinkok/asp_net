<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta5_wizard_fileupload.aspx.cs" Inherits="hafta1.hafta5_wizard_fileupload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    5
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    10
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Üyelik formu. Wizard, FileUpload, Textbox, Label, Button araçları kullanılarak.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class="display-6">Üyelik Formu</h1>
        </div>
        <div class="col-md-12 mb-5">
            <asp:MultiView runat="server" ID="container" ActiveViewIndex="0" OnActiveViewChanged="container_ActiveViewChanged">
                <div class="row">
                    <div class="col-md-12">
                        <asp:View ID="asama1" runat="server">
                            <div class="row">
                                <div class="col-md-6 mb-3">Ad:</div>
                                <div class="col-md-6 mb-3">
                                    <asp:TextBox runat="server" ID="ad" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6 mb-3">
                                    Soyad:
                                </div>
                                <div class="col-md-6 mb-3">
                                    <asp:TextBox runat="server" ID="soyad" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    Adres:
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox runat="server" ID="adres" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>

                        </asp:View>
                    </div>
                    <div class="col-md-12">
                        <asp:View ID="asama2" runat="server">
                            <div class="row">
                                <div class="col-md-6 mb-3">Görsel:</div>
                                <div class="col-md-6 mb-3">
                                    <asp:FileUpload runat="server" ID="resim" CssClass="form-control" />
                                </div>
                                <div class="col-md-12">
                                    <asp:Button runat="server" ID="kaydet" Text="Kaydet" CssClass="btn btn-success" OnClick="kaydet_Click" />
                                </div>
                            </div>
                        </asp:View>
                    </div>
                    <div class="col-md-12">
                        <asp:View ID="asama3" runat="server">
                            <div class="row">
                                <div class="col-md-6">Ad:</div>
                                <div class="col-md-6"><asp:Label runat="server" ID="lbl_ad" ></asp:Label></div>
                                <div class="col-md-6">Soyad:</div>
                                <div class="col-md-6"><asp:Label runat="server" ID="lbl_soyad" ></asp:Label></div>
                                <div class="col-md-6">Adres:</div>
                                <div class="col-md-6"><asp:Label runat="server" ID="lbl_adres" ></asp:Label></div>
                                <div class="col-md-6">Görsel:</div>
                                <div class="col-md-6"><asp:Image runat="server" ID="resim_show" Width="200px" Height="200px" /></div>
                                <div class="col-md-6">Görsel (Alternatif):</div>
                                <div class="col-md-6"><img id="resim_alternatif" runat="server" Width="200" height="200"  class="img rounded-circle" /></div>
                            </div>
                        </asp:View>
                    </div>
                </div>
            </asp:MultiView>
        </div>
        <div class="col-md-6 mb-5">
            <asp:Button runat="server" ID="geri" CssClass="btn btn-secondary" OnClick="geri_Click" Text="Geri" />
        </div>
        <div class="col-md-6 mb-5">
            <asp:Button runat="server" ID="ileri" CssClass="btn btn-secondary" OnClick="ileri_Click" Text="İleri" />
        </div>
        <div class="col-md-12 mt-5">
            <asp:Label runat="server" ID="lbl_bilgi" Text="" CssClass="alert alert-info"></asp:Label>
        </div>
    </div>

</asp:Content>
