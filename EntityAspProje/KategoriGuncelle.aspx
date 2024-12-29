<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="EntityAspProje.KategoriGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">

        <div>
            <asp:TextBox ID="TxtID" runat="server" CssClass="form-control" Enabled="false" ></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtAd" runat="server" placeholder="Kategori Adı:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-default" OnClick="Button1_Click" />
        </div>
        <br />
    </form>
</asp:Content>
