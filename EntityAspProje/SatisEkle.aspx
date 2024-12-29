<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SatisEkle.aspx.cs" Inherits="EntityAspProje.SatisEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ürün"></asp:Label>
            <asp:DropDownList ID="DDLUrun" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Personel"></asp:Label>
            <asp:DropDownList ID="DDLPersonel" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div>
        </div>
        <asp:Label ID="Label3" runat="server" Text="Müşteri"></asp:Label>
        <asp:DropDownList ID="DDLMusteri" runat="server" CssClass="form-control"></asp:DropDownList>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="Fiyat"></asp:Label>
            <asp:TextBox ID="TxtFiyat" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>
        <br />
    </form>
</asp:Content>
