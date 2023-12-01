<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Zuma.Feedback" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        #contact {
            background: linear-gradient(rgba(0, 0, 0, 0.6),rgba(0, 0, 0, 0.6)), url(../img/pic.jpg) no-repeat center center;
            height: 780px;
            background-color: #e5e5e5;
            background-size: cover;
        }
    </style>

</head>
<body>
    <nav id="menu" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                <a class="navbar-brand page-scroll" href="#page-top">ZUMA</a>

            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.aspx" class="page-scroll active">Home</a></li>
                    <li><a href="Menu.aspx" class="page-scroll">Menu</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div id="contact" class="text-center">
        <div class="container">
            <div class="section-title text-center">
                <h2>Feedback</h2>
                <hr>
            </div>
            <div class="col-sm-6 col-sm-offset-3">
                <form name="sentMessage" id="contactForm" runat="server">
                    <div class="row">
                        <div class="form-group">
                            <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" placeholder="Name" required="required"></asp:TextBox>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Email" required="required"></asp:TextBox>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="form-group">
                            <textarea type="message" id="txt_msg" runat="server" rows="4" class="form-control" placeholder="Message" required="required"></textarea>
                            <p class="help-block text-danger"></p>
                        </div>

                    </div>
                    <div id="success"></div>
                    <asp:Button ID="btn" runat="server" CssClass="btn btn-custom btn-lg" Text="Send Feedback"  OnClick="btn_Click" />
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/jquery.1.11.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>

