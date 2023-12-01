<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Zuma.WebForm1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Food Item</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="FoodImage" runat="server" />
            <h2><asp:Label ID="FoodName" runat="server" /></h2>
            <p><asp:Label ID="FoodDescription" runat="server" /></p>
            <p><asp:Label ID="FoodPrice" runat="server" /></p>
            <asp:Label ID="lblCount" runat="server" Text="Count: " />
            <asp:TextBox ID="txtCount" runat="server" Text="1" />
            <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" />
        </div>
    </form>
</body>
</html>
