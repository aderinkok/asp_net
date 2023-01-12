<%@ Page Title="" Language="C#" MasterPageFile="~/uygulama.Master" AutoEventWireup="true" CodeBehind="hafta7_db.aspx.cs" Inherits="hafta1.hafta7_db" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hafta_s" runat="server">
    7
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="uygulama_no" runat="server">
    12
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="uygulama_aciklama" runat="server">
    Ad-soyad ekleme,silme, güncelleme, görüntüleme (Temel CRUD işlemleri), Textbox, Label, Button kullanarak.
    <ol class="list-group list-group-numbered">
        <li class="list-group-item d-flex justify-content-between align-items-start">
            <div class="ms-2 me-auto">
                <div class="fw-bold">I. Yöntem (Event)</div>
                Herhangi bir event gerçekleştiğinde ilgili fonksiyon içerisinde veritabanı bilgileri yer alabilir.
            </div>

        </li>
        <li class="list-group-item d-flex justify-content-between align-items-start">
            <div class="ms-2 me-auto">
                <div class="fw-bold">II. Yöntem (Web.config) </div>
                Web.config dosyasına bağlantı metni eklenerek web.config üzerinden çağırılabilir.
            </div>

        </li>
        <li class="list-group-item d-flex justify-content-between align-items-start list-group-item-primary">
            <div class="ms-2 me-auto">
                <div class="fw-bold">III. Yöntem (Class) *Önerilen</div>
                İlgili veritabanı bilgileri bir sınıf içerisinde tutulur ve kullanılacağı yerde sınıf çağırılır.
            </div>

        </li>
    </ol>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ana_bolum" runat="server">

    <div class="row">
                <div class="col-md-12 mb-5">
            <asp:Label runat="server"  ID="lbl_bilgi"></asp:Label>
            <p><%=Dbm%></p>
        </div>
        <div class="col-md-12">
            <label>Ad</label>
            <asp:TextBox runat="server" ID="txt_ad" CssClass="form-control" placeholder="Ad" MaxLength="50" Text=""></asp:TextBox>
            <asp:HiddenField runat="server" ID="txt_kimlik" Value="-1"></asp:HiddenField>
        </div>
        <div class="col-md-12">
            <label>Soyad</label>
            <asp:TextBox runat="server" ID="txt_soyad" CssClass="form-control" placeholder="Soyad" MaxLength="50"></asp:TextBox>
        </div>
        <div class="col-md-12">
            <asp:Button runat="server" ID="kaydet" CssClass="btn btn-primary" Text="Kaydet" onClick="kaydet_Click"/>
        </div>

        <div class="col-md-12 mt-5">
            <asp:GridView runat="server" ID="veriler" CssClass="table" AutoGenerateColumns="False" DataSourceID="aspNetDb" AllowPaging="True" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                    <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
                    <asp:BoundField DataField="id" HtmlEncode="False" DataFormatString="<a target='_blank' href='hafta7_db.aspx?id={0}' class='btn btn-primary'>Düzenle</a>" />
                </Columns>
                <EmptyDataTemplate>
                   <p class="alert alert-info"> Veri bulunamadı.</p>
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:SqlDataSource ID="aspNetDb" runat="server" ConnectionString="<%$ ConnectionStrings:asp_netConnectionString %>" SelectCommand="SELECT [ad], [soyad], [id] FROM [ornekTablo]"></asp:SqlDataSource>

        </div>

        <div class="col-md-12 mt-5">Alternatif</div>
        <div class="col-md-12">

            <asp:GridView ID="veriler2" CssClass="table table-striped" runat="server" AutoGenerateColumns="false" EmptyDataText="Veri bulunamadı.">
                <Columns>
                    <asp:TemplateField HeaderText="Ad" ItemStyle-Width="50">
                        <ItemTemplate>
                            <asp:Label ID="lbl_ad_s" runat="server" Text='<%# Eval("ad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Soyad" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lbl_soyad_s" runat="server" Text='<%# Eval("soyad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="İşlemler" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" ID="link" CssClass="btn btn-outline-warning" Text="Düzenle" NavigateUrl='<%# Eval("id", @"?id={0}&islem=duzenle") %>'></asp:HyperLink>
                            <asp:HyperLink runat="server" ID="link2" CssClass="btn btn-outline-danger" Text="Sil" NavigateUrl='<%# Eval("id", @"?id={0}&islem=sil") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
    </div>
</asp:Content>
