<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Page</title>
    <link rel="stylesheet" type="text/css" href="Order.css" />
    <script>
        function showFlashMessage(summary) {
            const flashMessage = document.getElementById("flashMessage");
            flashMessage.innerHTML = summary; // Set the message content
            flashMessage.style.display = "block"; // Show the message
        }

        function updateColorDisplay() {
            var colorPicker = document.getElementById("boxColor");
            var colorDisplay = document.getElementById("colorDisplay");
            var hexCodeDisplay = document.getElementById("hexCodeDisplay");
            colorDisplay.style.backgroundColor = colorPicker.value;
            hexCodeDisplay.textContent = colorPicker.value; // Update the hex code display
        }
    </script>
</head>
<body>
    <header>
        <h1>Shree Radha Krishna Enterprises</h1>
        <nav>
            <ul>
                <li><a href="index.aspx">Home</a></li>
                <li><a href="Categories.aspx">Categories</a></li>
                <li><a href="About.aspx">About Us</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <form id="form1" runat="server">
            <h2>Place Your Order</h2>

            <label for="ddlBoxType">Select Box Type:</label>
            <asp:DropDownList ID="ddlBoxType" runat="server">
            <asp:ListItem Value="Pastry Box">Pastry Box</asp:ListItem>
            <asp:ListItem Value="Cake Box">Cake Box</asp:ListItem>
            <asp:ListItem Value="Sweet Box">Sweet Box</asp:ListItem>
            <asp:ListItem Value="Pizza Box">Pizza Box</asp:ListItem>
            <asp:ListItem Value="Gift Box">Gift Box</asp:ListItem>
            </asp:DropDownList>
         <br />

        <label for="txtSize">Enter Size:</label>
            <asp:TextBox ID="txtSize" runat="server" />
        <br />

         <label for="boxColour">Select Box Color:</label>
            <asp:TextBox ID="boxColour" runat="server" />
        <br />


        <label for="txtQuantity">Enter Quantity:</label>
            <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" />
        <br />

        <label for="txtCustomerName">Your Name:</label>
        <asp:TextBox ID="txtCustomerName" runat="server" />
        <br />

         <label for="txtCustomerAddress">Delivery Address:</label>
            <asp:TextBox ID="txtCustomerAddress" runat="server" TextMode="MultiLine" />
        <br />

        <label for="txtCustomerContact">Contact Number:</label>
        <asp:TextBox ID="txtCustomerContact" runat="server" />
        <br />

        <label for="txtDeliveryDate">Delivery Date:</label>
        <asp:TextBox ID="txtDeliveryDate" runat="server" TextMode="Date" />
        <br />

        <label for="ddlPaymentMode">Mode of Payment:</label>
        <asp:DropDownList ID="ddlPaymentMode" runat="server">
            <asp:ListItem Value="Cash on Delivery">Cash on Delivery</asp:ListItem>
            <asp:ListItem Value="Online Payment">Online Payment</asp:ListItem>
        </asp:DropDownList>
        <br />

        <label for="txtTransactionId">Enter Transaction Id:</label>
        <asp:TextBox ID="txtTransactionId" runat="server" />
        <br />

         <label for="txtCustomerNotes">Customer Notes:</label>
            <asp:TextBox ID="txtCustomerNotes" runat="server" TextMode="MultiLine" />
        <br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit Order" OnClick="btnSubmit_Click" />
        <br />

        <div id="flashMessage" class="flash-message" style="display: none;"></div>
        
    </form>
</main>
<footer>
    <p>Contact Us: 244/2 Chak Zero Road, Prayagraj, Uttar Pradesh | Mobile: 1234567890, 0987654321</p>
</footer>
</body>
</html>