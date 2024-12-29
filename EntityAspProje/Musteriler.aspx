<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Musteriler.aspx.cs" Inherits="EntityAspProje.Musteriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Ad</th>
            <th>Soyad</th>
            <th>İşlemler</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <itemtemplate>
                <tr>
                    <td><%#Eval("MusteriId") %></td>
                    <td><%#Eval("MusteriAd") %></td>
                    <td><%#Eval("MusteriSoyad") %></td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%#"~/MusteriGuncelle.aspx?MusteriId=" + Eval("MusteriId") %>' ID="HyperLink1" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%# string.Format("~/MusteriSil.aspx?MusteriId={0}", Eval("MusteriId")) %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                    </td>
                </tr>
            </itemtemplate>
        </asp:Repeater>
    </table>
    <a href="MusteriEkle.aspx" class="btn btn-info">Yeni Müşteri</a>
</asp:Content>
