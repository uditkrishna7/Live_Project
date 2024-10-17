<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs"
    Inherits="Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shree Radha Krishna Enterprises</title>
    <link rel="stylesheet" href="Home.css">
</head>
<body>
    <form runat="server">
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
            <div class="slideshow-container">
                <div class="mySlides fade">
                    <div class="numbertext">1 / 3</div>
                    <img src="photu/5.jpg" style="width: 100%" />
                    <div class="text">Quality Packaging for All Your Needs
                    </div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 3</div>
                    <img src="photu/5.jpg" style="width: 100%">
                    <div class="text">Elegant Designs for Special Occasions
                    </div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">3 / 3</div>
                    <img src="photu/Multiple_boxes.jpg" style="width: 100%">
                    <div class="text">Safe and Reliable Delivery Options
                    </div>
                </div>
            </div>
            <br>
            <div style="text-align: center">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>

            <section>
                <h2>Our Box Collection</h2>
                <div class="box-container">
                    <div class="box box1">
                        <p>High-quality pastry boxes to keep your pastries fresh
                            and delicious.</p>
                        <div class="caption">Perfect for pastries, ensuring freshness
                            and quality!</div>
                        <asp:Button ID="Button1" runat="server" Text="View Categories"
                            OnClick="Button1_Click" />
                    </div>
                    <div class="box box2">
                        <p>Sturdy cake boxes to ensure safe delivery of your cakes.
                        </p>
                        <div class="caption">Sturdy and reliable, ideal for cakes
                            of all sizes!</div>
                        <asp:Button ID="Button2" runat="server" Text="View Categories"
                            OnClick="Button2_Click" />
                    </div>
                    <div class="box box3">
                        <p>Elegant sweet boxes for gifting and special occasions.
                        </p>
                        <div class="caption">Elegance meets functionality for
                            all your gifting needs!</div>
                        <asp:Button ID="Button3" runat="server" Text="View Categories"
                            OnClick="Button3_Click" />
                    </div>
                </div>
            </section>
        </main>
        <footer>
            <p>Contact Us: 244/2 Chak Zero Road, Prayagraj, Uttar
                Pradesh | Mobile: 1234567890, 0987654321</p>
        </footer>
    </form>

    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none"; // Hide all slides by default
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 2000); // Change image every 2 seconds
        }
    </script>
</body>
</html>
