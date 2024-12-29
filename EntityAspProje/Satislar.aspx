<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Satislar.aspx.cs" Inherits="EntityAspProje.Satislar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered">
    <tr>
        <th>ID</th>
        <th>Ürün</th>
        <th>Personel</th>
        <th>Müşteri</th>
        <th>Fiyat</th>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr>
                <td><%#Eval("SatisId") %></td>
                <td><%#Eval("UrunAd") %></td>
                <td><%#Eval("PersonelAdSoyad") %></td>
                <td><%#Eval("Musteri") %></td>
                <td><%#Eval("Fiyat") %></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table>
<a href="SatisEkle.aspx" class="btn btn-info">Yeni Satış</a>
</asp:Content>
