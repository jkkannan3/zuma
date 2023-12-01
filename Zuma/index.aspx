    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Zuma.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Zuma Restraunt</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <nav id="menu" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                <a class="navbar-brand page-scroll" href="#page-top">ZUMA</a>

            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.aspx" class="page-scroll active">Home</a></li>
                    <li><a href="About.aspx" class="page-scroll">About</a></li>
                    <li><a href="Services.aspx" class="page-scroll">Services</a></li>
                    <li><a href="Signup.aspx" class="page-scroll">Signup</a></li>
                    <li><a href="Login.aspx" class="page-scroll">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <header id="header">
        <div class="intro">
            <div class="overlay">
                <div class="container">
                    <div class="row">
                        <div class="intro-text">
                            <h1>GET YOUR</h1>
                            <p>FAVORITE FOOD </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div id="footer">
        <div class="container text-center">
            <div class="col-md-4">
                <h3>Address</h3>
                <div class="contact-item">
                    <p>12, kandhan St,</p>
                    <p>Chennai-600027</p>
                </div>
            </div>
            <div class="col-md-4">
                <h3>Opening Hours</h3>
                <div class="contact-item">
                    <p>Mon-Thurs: 10:00 AM - 11:00 PM</p>
                    <p>Fri-Sun: 11:00 AM - 02:00 AM</p>
                </div>
            </div>
            <div class="col-md-4">
                <h3>Contact Info</h3>
                <div class="contact-item">
                    <p>Phone: +91 9876543210</p>
                    <p>Email: zuma@gmail.com</p>
                </div>
            </div>
        </div>
        <div class="container-fluid text-center copyrights">
            <div class="col-md-8 col-md-offset-2">
                <div class="social">
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
                <p>2023 Zuma. All rights reserved </p>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/jquery.1.11.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

</body>
</html>
