<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EntityAspProje.Login" %>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Entity  ASP</title>
    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates,
		Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <!-- /meta tags -->
    <!-- custom style sheet -->
    <link href="/Login/css/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->
    <!-- fontawesome css -->
    <link href="/Login/css/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- /google fonts-->

    <style type="text/css">
        .btn-primary {}
        .fa-keyboard {}
    </style>

</head>


<body>
    <form runat="server">
        <h1>Giriş Form Paneli</h1>
        <div class=" w3l-login-form">
            <h2>Entity ASP</h2>
            <div class=" w3l-form-group">
                <label>Kullanıcı Adı:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <asp:TextBox ID="TxtKullanici" name="kullanici" runat="server" placeholder="Kullanıcı Adı" required="required" CssClass="form-control"></asp:TextBox>

                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Şifre:</label>
                <div class="group">
                    <i class="fas fa-unlock"></i>
                    <asp:TextBox ID="TxtSifre" type="password" name="sifre" runat="server" placeholder="Şifre" required="required" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <asp:Button ID="Giris" runat="server" Text="Giriş Yap!" OnClick="Giris_Click" Height="49px" Width="407px" />
        </div>
    </form>
</body>

</html>
