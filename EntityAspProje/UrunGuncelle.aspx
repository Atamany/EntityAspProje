<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunGuncelle.aspx.cs" Inherits="EntityAspProje.UrunGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            <asp:TextBox ID="TxtUrunId" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Ürün Adı"></asp:Label>
            <asp:TextBox ID="TxtUrunAd" runat="server" placeholder="Ürün Adı:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="Marka"></asp:Label>
            <asp:TextBox ID="TxtUrunMarka" runat="server" placeholder="Marka:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
        </div>
        <asp:Label ID="Label4" runat="server" Text="Kategori"></asp:Label>
        <asp:DropDownList ID="DDLKategori" runat="server" CssClass="form-control"></asp:DropDownList>
        <br />
        <div>
            <asp:Label ID="Label5" runat="server" Text="Fiyat"></asp:Label>
            <asp:TextBox ID="TxtUrunFiyat" runat="server" placeholder="Fiyat:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label6" runat="server" Text="Stok"></asp:Label>
            <asp:TextBox ID="TxtUrunStok" runat="server" placeholder="Stok:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>
        <br />
    </form>
</asp:Content>
