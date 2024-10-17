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

            <label for="name">Your Name:</label>
            <asp:TextBox ID="txtName" runat="server" />
            <br />

            <label for="contact">Contact Number:</label>
            <asp:TextBox ID="txtContact" runat="server" />
            <br />

            <label for="address">Delivery Address:</label>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" />
            <br />

            <label for="boxType">Select Box Type:</label>
            <asp:DropDownList ID="ddlBoxType" runat="server">
                <asp:ListItem Value="Pastry Box">Pastry Box</asp:ListItem>
                <asp:ListItem Value="Cake Box">Cake Box</asp:ListItem>
                <asp:ListItem Value="Sweet Box">Sweet Box</asp:ListItem>
                <asp:ListItem Value="Pizza Box">Pizza Box</asp:ListItem>
                <asp:ListItem Value="Gift Box">Gift Box</asp:ListItem>
            </asp:DropDownList>
            <br />

            <label for="boxColor">Select Box Color:</label>
            <br />
            <input type="color" id="boxColor" name="boxColor" onchange="updateColorDisplay()" />
            <div id="colorDisplay" class="color-preview"></div>
            <div id="hexCodeDisplay" class="hex-code"></div>
            <br />

            <label for="boxQuantity">Enter Quantity:</label>
            <asp:TextBox ID="txtQuantity" runat="server" Type="number" />
            <br />

            <label for="deliveryDate">Delivery Date:</label>
            <asp:TextBox ID="txtDeliveryDate" runat="server" Type="date" />
            <br />

            <label for="customerNotes">Customer Notes:</label>
            <asp:TextBox ID="txtCustomerNotes" runat="server" TextMode="MultiLine" />
            <br />

            <label for="paymentMode">Payment Mode:</label>
            <asp:DropDownList ID="ddlPaymentMode" runat="server">
                <asp:ListItem Value="Cash on Delivery">Cash on Delivery</asp:ListItem>
                <asp:ListItem Value="Online Payment">Online Payment</asp:ListItem>
            </asp:DropDownList>
            <br />

            <div id="upiQRCode">
                <img src="your_upi_qr_code.png" alt="UPI QR Code" style="width: 150px; height: 150px;" />
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit Order" /> // <%--OnClick="SubmitOrder"--%>
            <div id="flashMessage" class="flash-message" style="display: none;"></div>
        </form>
    </main>

    <footer>
        <p>Contact Us: 244/2 Chak Zero Road, Prayagraj, Uttar Pradesh | Mobile: 1234567890, 0987654321</p>
    </footer>
</body>
</html>
