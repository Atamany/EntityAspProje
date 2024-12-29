<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="EntityAspProje.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Ad</th>
            <th>İşlemler</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("KategoriId") %></td>
                    <td><%#Eval("KategoriAd") %></td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%#"~/KategoriGuncelle.aspx?KategoriId=" + Eval("KategoriId") %>' ID="HyperLink1" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%# string.Format("~/KategoriSil.aspx?KategoriId={0}", Eval("KategoriId")) %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="KategoriEkle.aspx" class="btn btn-info">Yeni Kategori</a>
</asp:Content>
