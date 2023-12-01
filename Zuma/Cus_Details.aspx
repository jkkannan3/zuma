<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cus_Details.aspx.cs" Inherits="Zuma.Cus_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cutomer details</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        #contact {
            background: linear-gradient(rgba(0, 0, 0, 0.6),rgba(0, 0, 0, 0.6)), url(../img/pic.jpg) no-repeat center center;
            height: 580px;
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
                    <li><a href="Feedbacks.aspx" class="page-scroll">Customer Feedbacks</a></li>

                </ul>
            </div>
        </div>
    </nav>


    <form id="form1" runat="server">
        <div id="contact" class="text-center">
            <div class="container">
                <div class="col-md-6 col-md-offset-3">
                    <h1>Customer Details</h1>
                    <div class="form-group">
                        <asp:TextBox ID="txt_name" CssClass="form-control" runat="server" placeholder="Name" />
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_email" CssClass="form-control" runat="server" placeholder="Email" />
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_username" CssClass="form-control" runat="server" placeholder="Username" />
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_password" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password" />
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_conpassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Confirm Password" />
                    </div>
                    <br />
                    <div class="form-group">
                        <asp:TextBox ID="id" CssClass="form-control" runat="server" placeholder="Id" />
                    </div>
                    <br />
                    <div class="mt-3">
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-warning" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnClear" Text="Clear" CssClass="btn btn-danger" OnClick="btnClear_Click" runat="server" ForeColor="White" />
                        <asp:Button ID="btnSrh" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSrh_Click" />
                    </div>
                    <br>
                    <br>
                </div>
                <div class="col-xl-6 ">
                    <asp:GridView ID="Gv" runat="server" CssClass="table table-dark " AutoGenerateColumns="False" OnRowDeleting="Gv_RowDeleting" DataKeyNames="ID" ForeColor="Black" BackColor="#CCFFCC" BorderStyle="Ridge">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" HeaderStyle-CssClass="bg-primary" />
                            <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-CssClass="bg-primary" />
                            <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="bg-primary" />
                            <asp:BoundField DataField="Username" HeaderText="Username" HeaderStyle-CssClass="bg-primary" />
                            <asp:BoundField DataField="Password" HeaderText="Password" HeaderStyle-CssClass="bg-primary" />
                            <asp:BoundField DataField="Confirm_Password" HeaderText="Confirm Password" HeaderStyle-CssClass="bg-primary" />
                            <asp:CommandField ShowDeleteButton="true" HeaderStyle-CssClass="bg-primary" ControlStyle-CssClass="btn btn-danger" HeaderText="Delete" ItemStyle-ForeColor="White" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="js/jquery.1.11.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
