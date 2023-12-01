<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Zuma.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Menu</title>
    <meta name="description" content="">
    <meta name="author" content="">


    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
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
        <li><a href="About.aspx" class="page-scroll">About</a></li>
        <li><a href="Services.aspx" class="page-scroll">Services</a></li>
        <li><a href="Feedback.aspx" class="page-scroll">Feedback</a></li>
      </ul>
    </div>
  </div>
</nav>
  
   <form id="contactForm" runat="server" method="post">
    <div id="restaurant-menu">
        <div class="section-title text-center center">
            <div class="overlay">
                <br />
                <h2>Menu</h2>
                <hr>
                <p>YOUR MENU IS HERE</p>
            </div>
        </div>

        <div class="container">
                <div class="col-xs-12 col-sm-6">
                      <div class="row">
                        <div class="menu-section">
                            <h2 class="menu-section-title">Breakfast & Starters</h2>
                            <hr>

                            <div class="menu-item">
                                <div class="menu-item-name">Vada </div>
                                <input type="number" runat="server" name="quantity" value="1" min="1" max="10" size="5" />
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                                <div class="menu-item-price">Price: $20 </div>
                                <asp:Image ID="Image1" runat="server" src="img/menu/vada.jpg" />
                            </div>

                            <div class="menu-item">
                                <div class="menu-item-name">Vegetable Soup </div>
                                <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                                <div class="menu-item-price">Price: $50 </div>
                                <asp:Image ID="Image2" runat="server" src="img/menu/soup.jpg" />
                            </div>

                            <div class="menu-item">
                                <div class="menu-item-name">Vegetable Momo </div>
                                <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                                <div class="menu-item-price">Price: $50 </div>
                                <asp:Image ID="Image3" runat="server" src="img/menu/momo.jpg" />
                            </div>
                        </div>
                     </div>
                </div>
                <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <div class="menu-section">
                        <h2 class="menu-section-title">Main Course</h2>
                        <hr/>

                        <div class="menu-item">
                            <div class="menu-item-name">Vegetable Biriyani </div>
                            <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                            <asp:Button ID="Button4" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                            <div class="menu-item-price">Price: $200 </div>
                            <asp:Image ID="Image4" runat="server" src="img/menu/vegbiriyani.jpg" />
                        </div>

                        <div class="menu-item">
                            <div class="menu-item-name">Vegetable Fried Rice</div>
                            <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                            <asp:Button ID="Button5" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                            <div class="menu-item-price">Price: $150 </div>
                            <asp:Image ID="Image5" runat="server" src="img/menu/vegfried.jpg" />
                        </div>

                        <div class="menu-item">
                            <div class="menu-item-name">Veg Meal </div>
                            <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                            <asp:Button ID="Button6" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                            <div class="menu-item-price">Price: $200 </div>
                            <asp:Image ID="Image6" runat="server" src="img/menu/fmeal.jpg" />
                        </div>

                    </div>
                </div>
            </div>
            
                <div class="col-xs-12 col-sm-6">
                    <div class="menu-section">
                        <h2 class="menu-section-title">Dinner</h2>
                        <hr>
                        <div class="menu-item">
                            <div class="menu-item-name">Dosa </div>
                            <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                            <asp:Button ID="Button7" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                            <div class="menu-item-price">Price: $60 </div>
                            <asp:Image ID="Image7" runat="server" src="img/menu/dosa.jpg" />
                        </div>
                        <div class="menu-item">
                            <div class="menu-item-name">Idly </div>
                            <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                            <asp:Button ID="Button8" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                            <div class="menu-item-price">Price: $15 </div>
                            <asp:Image ID="Image8" runat="server" src="img/menu/idly.jpg" />
                        </div>

                        <div class="menu-item">
                            <div class="menu-item-name">Veg Noodles </div>
                            <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                            <asp:Button ID="Button9" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                            <div class="menu-item-price">Price: $90 </div>
                            <asp:Image ID="Image10" runat="server" src="img/menu/vegnood.jpg" />
                        </div>
                    </div>
                 </div>    
                

            
                <div class="col-xs-12 col-sm-6">
                    <div class="menu-section">
                        <h2 class="menu-section-title">Coffee & Drinks</h2>
                        <hr>
                        <div class="menu-item">
                            <div class="menu-item-name">Hot Coffee </div>
                            <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                            <asp:Button ID="Button10" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                            <div class="menu-item-price">Price: $30 </div>
                            <asp:Image ID="Image11" runat="server" src="img/menu/hcoffee.jpg" />
                        </div>
                        <div class="menu-item">
                            <div class="menu-item-name">Cold Coffee </div>
                            <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                            <asp:Button ID="Button11" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                            <div class="menu-item-price">Price: $40 </div>
                            <asp:Image ID="Image12" runat="server" src="img/menu/ccoffee.jpg" />
                        </div>
                        <div class="menu-item">
                            <div class="menu-item-name">Mango Juice </div>
                            <input type="number" name="quantity" value="1" min="1" max="10" size="5" />
                            <asp:Button ID="Button12" runat="server" CssClass="btn btn-warning" Text="Add to Cart" />
                            <div class="menu-item-price">Price: $50 </div>
                            <asp:Image ID="Image13" runat="server" src="img/menu/mango.jpg" />                           
                            </div>                       
                        </div>
                    </div>
                  </div>                                
            </div>
    </form>

        <script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
