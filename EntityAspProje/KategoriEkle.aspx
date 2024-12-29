<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="EntityAspProje.KategoriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Kategori Adı:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        
        <div>
            <asp:Button ID="Button1" runat="server" Text="Kategori Ekle" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
        <br />
    </form>
</asp:Content>
