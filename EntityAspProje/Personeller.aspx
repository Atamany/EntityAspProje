<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Personeller.aspx.cs" Inherits="EntityAspProje.Personeller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Ad - Soyad</th>
            <th>İşlemler</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("PersonelId") %></td>
                    <td><%#Eval("PersonelAdSoyad") %></td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%#"~/PersonelGuncelle.aspx?PersonelId=" + Eval("PersonelId") %>' ID="HyperLink1" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%# string.Format("~/PersonelSil.aspx?PersonelId={0}", Eval("PersonelId")) %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="PersonelEkle.aspx" class="btn btn-info">Yeni Personel</a>
</asp:Content>
