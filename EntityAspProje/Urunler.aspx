<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="EntityAspProje.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Ad</th>
            <th>Marka</th>
            <th>Kategori</th>
            <th>Fiyat</th>
            <th>Stok</th>
            <th>İşlemler</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("UrunId") %></td>
                    <td><%#Eval("UrunAd") %></td>
                    <td><%#Eval("UrunMarka") %></td>
                    <td><%#Eval("KategoriAd") %></td>
                    <td><%#Eval("UrunFiyat") %></td>
                    <td><%#Eval("UrunStok") %></td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%#"~/UrunGuncelle.aspx?UrunId=" + Eval("UrunId") %>' ID="HyperLink1" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%# string.Format("~/UrunSil.aspx?UrunId={0}", Eval("UrunId")) %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="UrunEkle.aspx" class="btn btn-info">Yeni Ürün</a>
</asp:Content>
