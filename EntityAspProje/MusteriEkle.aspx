<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MusteriEkle.aspx.cs" Inherits="EntityAspProje.MusteriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Soyad:" CssClass="form-control"></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
        <br />
    </form>
</asp:Content>
