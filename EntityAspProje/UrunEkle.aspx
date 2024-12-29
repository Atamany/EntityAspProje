<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="EntityAspProje.UrunEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TxtUrunAd" runat="server" placeholder="Ürün Adı:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtUrunMarka" runat="server" placeholder="Marka:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>

        </div>
        <asp:DropDownList ID="DDLKategori" runat="server" CssClass="form-control"></asp:DropDownList>
        <br />
        <div>
            <asp:TextBox ID="TxtUrunFiyat" runat="server" placeholder="Fiyat:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtUrunStok" runat="server" placeholder="Stok:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>
        <br />
    </form>
</asp:Content>
