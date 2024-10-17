<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="Admin.css" />
</head>
<body>

    <p>
&nbsp;</p>

    <!-- Header Section -->
    <header>
        <h1>Shree Radha Krishna Enterprises</h1>
        <nav>
            <ul>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Categories.aspx">Categories</a></li>
                <li><a href="About.aspx">About Us</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content Section -->
    <main>
        <h2>Admin Panel - Order Details</h2>

        <asp:GridView ID="gridViewOrders" 
        runat="server" AutoGenerateColumns="False" 
        CssClass="order-table" GridLines="Both" 
        OnSelectedIndexChanged="gridViewOrders_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="BoxType" HeaderText="Box Type" />
                <asp:BoundField DataField="BoxColor" HeaderText="Box Color" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="DeliveryDate" HeaderText="Delivery Date" />
                <asp:BoundField DataField="CustomerNotes" HeaderText="Customer Notes" />
            </Columns>
        </asp:GridView>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>Contact Us: 244/2 Chak Zero Road, Prayagraj, Uttar Pradesh | Mobile: 1234567890, 0987654321</p>
    </footer>

</body>
</html>
