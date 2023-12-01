﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Zuma.Signup" EnableEventValidation="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" aria-atomic="True" enableeventvalidation="True">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Signup</title>
    <meta name="description" content="">
    <meta name="author" content="">


    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
        <style>
        #contact
        {            
            background: linear-gradient(rgba(0, 0, 0, 0.6),rgba(0, 0, 0, 0.6)), url(../img/pic.jpg) no-repeat center center;
            height:780px;
            background-color: #e5e5e5;
            background-size: cover;
        }
    </style>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top">ZUMA</a> 

    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.aspx"class="page-scroll active">Home</a></li>
        <li><a href="About.aspx" class="page-scroll">About</a></li>
        <li><a href="Services.aspx" class="page-scroll">Services</a></li>
        <li><a href="Signup.aspx" class="page-scroll">Signup</a></li>
        <li><a href="Login.aspx" class="page-scroll">Login</a></li>
      </ul>
    </div>
  </div>
</nav>
    <div id="contact" class="text-center">
        .
  <div class="container">
      <div class="section-title text-center">
          <h2>Signup</h2>
          <hr>
      </div>
      <div class="col-sm-6 col-sm-offset-3">
          <form id="contactForm" runat="server" method="post" aria-atomic="True">
              <div class="row">
                  <div class="form-group">
                      <asp:TextBox type="text" ID="name" runat="server" CssClass="form-control" placeholder="Name" required="required"></asp:TextBox>
                      <p id="name-warning" class="warning-message"></p>
                  </div>
                  <div class="form-group">
                      <asp:TextBox type="email" ID="email" runat="server" CssClass="form-control" placeholder="Email" required="required"></asp:TextBox>
                      <p id="email-warning" class="warning-message"></p>
                  </div>
                  <div class="form-group">
                      <asp:TextBox type="text" ID="username" runat="server" CssClass="form-control" placeholder="Username" required="required"></asp:TextBox>
                      <p id="username-warning" class="warning-message"></p>
                  </div>
                  <div class="form-group">
                      <asp:TextBox type="password" ID="password" runat="server" CssClass="form-control" placeholder="Password" required="required"></asp:TextBox>
                      <p id="password-warning" class="warning-message"></p>
                  </div>
                  <div class="form-group">
                      <asp:TextBox type="password" ID="confirmpassword" runat="server" CssClass="form-control" placeholder="Confirm Password" required="required"></asp:TextBox>
                      <p id="confirm-password-warning" class="warning-message"></p>
                  </div>
              </div>

              <div id="success"></div>
              <asp:Button type="submit" ID="btn" runat="server" CssClass="btn btn-custom btn-lg" Text="Signup" OnClientClick="return ValidateForm();" OnClick="btn_Click" />
              <br>
              <br>
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx">Already a user,Login</asp:HyperLink>

          </form>
      </div>
  </div>
    </div>
    <script type="text/javascript" src="/js/signup.js"></script>
        <script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
    <script type="text/javascript" src="js/main.js"></script>

</body>
</html>
