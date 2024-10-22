<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs"
    Inherits="Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shree Radha Krishna Enterprises</title>
    <link rel="stylesheet" href="Home.css">
    <style>
        * {box-sizing: border-box;}
        .mySlides {display: none;}
img {vertical-align: middle;}
        .slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  background-color:white;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}
    </style>
</head>
<body>
    <form runat="server">
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

    <main>
        <!--hvkjg-->
        <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="photu/1.png" style="width:100%"/>
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="photu/3.jpg" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="photu/4.jpg" style="width:100%">
  <div class="text">Caption Three</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

        <!--jgkg-->
        <section>
            <h2>Our Box Collection</h2>
            <div class="box-container">
                <div class="box">
                  
                    <p>High-quality pastry boxes to keep your pastries fresh and delicious.</p>
                    <asp:Button ID="Button1" runat="server" 
                        Text="View Categories" OnClick="Button1_Click1" />
                </div>
                <div class="box">
                   
                    <p>Elegant sweet boxes for gifting and special occasions.</p>
                    <button onclick="window.location.href='Categories.aspx'">View Categories</button>
                </div>
                <div class="box">
                   
                    <p>Sturdy cake boxes to ensure safe delivery of your cakes.</p>
                    <button onclick="window.location.href='Categories.aspx'">View Categories</button>
                </div>
            </div>
        </section>
    </main>
    <footer>
     <p>Contact Us: 244/2 Chak Zero Road, Prayagraj, Uttar Pradesh | Mobile: 1234567890, 0987654321s</p>
 </footer>
        </form>
</body>
    <script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
    </script>
</html>
