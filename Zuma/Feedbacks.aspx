
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedbacks.aspx.cs" Inherits="Zuma.Feedbacks" %>

<!DOCTYPE html>

<html>
<head runat="server">
    
       <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cutomer Feedbacks</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">
     <style>
         #contact {
             background: linear-gradient(rgba(0, 0, 0, 0.6),rgba(0, 0, 0, 0.6)), url(../img/pic.jpg) no-repeat center center;
             width:100%;
             height: 100px;
             background-color: #e5e5e5;
             background-size: cover;
         }
     </style>
</head>
<body>
       <nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top">ZUMA</a> 
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.aspx"class="page-scroll active">Home</a></li>
        <li><a href="Cus_Details.aspx" class="page-scroll">Customer Details</a></li>
      </ul>
    </div>
  </div>
</nav>
      <form id="form1" runat="server">
  <div class="container">
          <div id="contact" class="text-center">
                <div class="col-xl-6 ">
                    <asp:GridView ID="Gv2" runat="server" CssClass="table table-dark " AutoGenerateColumns="False"  OnRowDeleting="Gv2_RowDeleting"  DataKeyNames="ID" ForeColor="Black" BackColor="#CCFFCC" BorderStyle="Ridge">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" HeaderStyle-CssClass="bg-primary" />
                            <asp:BoundField DataField="Name" HeaderText="Name"  HeaderStyle-CssClass="bg-primary"/>
                            <asp:BoundField DataField="Email" HeaderText="Email"  HeaderStyle-CssClass="bg-primary"/>
                            <asp:BoundField DataField="Message" HeaderText="Message"  HeaderStyle-CssClass="bg-primary"/>
                            <asp:CommandField ShowDeleteButton="true"  HeaderStyle-CssClass="bg-primary" ControlStyle-CssClass="btn btn-danger" HeaderText="Delete" ItemStyle-ForeColor="White" />
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
