<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Flipkart</title>
<style>
<%@include file="/WEB-INF/css/webapp.css"%>
</style>
</head>
<body>
<h1 class="glow" style="text-align: center;background: "><span class="fa fa-shopping-cart" style="font-size:48px;color:#d5d9d7"></span>Flipkart A-Z Product Sales<span class="fa fa-shopping-cart" style="font-size:48px;color:#d5d9d7"></span></h1>
<hr />
<p style="text-align: center;">${message}</p>
<h1 style="text-align: center;">
<a href="/adminlogin"><img
alt="profile" src="https://www.pngfind.com/pngs/m/89-899455_direct-video-feedback-admin-profile-hd-png-download.png" width="70px" height="70px"><br>Admin Login</a>
</h1>
<hr />


<header>
<ul>
<li class="left"><img src="https://i.pinimg.com/originals/15/aa/16/15aa1678d4ee5615c5c53ed5c9968126.png" height="120px" alt=""
width="120px"></li>
<li><img alt="" src="https://newtimesofindia.com/wp-content/uploads/2022/05/Great-offer-from-Flipkart-Buy-this-latest-smartphone-at-Rs8499.jpg" height="150px" width="800px" style="float: right;margin-top:-29px;margin-left:-23px;width: 1108px">
</li>
<li class="profile"><img
alt="profile" src="https://cdn2.vectorstock.com/i/1000x1000/17/61/male-avatar-profile-picture-vector-10211761.jpg" width="80px" height="100px"><br>Profile</li>
</ul>
</header>

<nav>
<div class="catgry">
<ul>
<li><a href="customer/customerlogin">Customer Login</a></li>
</ul>
</div>

</nav>

<iframe width="1500" height="400" src="https://www.youtube.com/embed/P91bKe-J-mc?autoplay=1&mute=1" title="YouTube video player"></iframe>
<main>
<div class="slide-container">
<div class="slides">
<div class="text">
Hot Product<br>A massive collection of products with
affordable price in<br>various categories<br> <span>Buy!
and Enjoy!</span>
</div>
<img alt="slide 1" src="https://i.pinimg.com/736x/32/63/c2/3263c2404a597112cae7fca3cba0a5a9.jpg" height="400px" width="700px" style="float: right;">

</div>

<div class="slides">
<div class="text">
Online And Cash on Delivery <br>is Available!
</div>
<img alt="cash on delivery" src="https://entrackr-bucket.s3.ap-south-1.amazonaws.com/wp-content/uploads/2020/07/07113413/Flipkart.jpg"
width="700px" height="400px" style="float: right;">
</div>

<div class="slides">
<div class="text">
Order Shipping Only 40.RS<br> in India!
</div>
<img alt="discount" src="https://www.brandzwatch.com/wp-content/uploads/2020/12/Flipkart-wholesale-app-1280x720.jpg" width="700px"
height="400px" style="float: right;">

</div>

<a class="prev" onclick="plusDivs(-1)">&#10094;</a> <a class="next"
onclick="plusDivs(1)">&#10095;</a>
</div>

<div class="topic">
<h1>Top Most Searched Products</h1>
</div>

<div class="books-container">
<div>
<img alt="" src="https://images.macrumors.com/t/z9nluARKyeEm_EIAu18cJ5wrmVM=/400x0/article-new/2021/09/airpods-pro-black-background.jpg?lossy" width="200px"
height="300px">
<h4>Wireless Bluetooth</h4>
<p>Product ID: WB123</p>
</div>

<div>
<img alt="" src="https://static.digit.in/product/thumb_198189_product_td_300.jpeg">
<h4>Mobile Phone</h4>
<p>Product ID: MP456</p>
</div>

<div>
<img alt="" src="https://kodaktv.in/wp-content/uploads/2021/10/2.jpg">
<h4>LET TV</h4>
<p>Product ID: LET456</p>
</div>

<div>
<img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_v8KrMbXmrF2nAVE3gMPWFOUbqjKWB-6gTQ&usqp=CAU">
<h4>Waching Machine</h4>
<p>Product ID: WM123</p>
</div>
</div>
<div class="books-container">
<div style="margin-right: -931px;">
<img alt="" src="https://onhike.com/wp-content/uploads/2021/07/buy-the-best-electronic-products-online.jpg" style="width: 300px;height: 300px">
<img alt="" src="https://blog.saginfotech.com/wp-content/uploads/2018/12/gst-rate-slash.jpg" style="width: 300px;height: 300px">
<img alt="" src="https://content.jdmagicbox.com/comp/ujjain/n9/9999px734.x734.100903155231.v9n9/catalogue/r-b-zone-freeganj-ujjain-ujjain-electronic-goods-showrooms-bdwryak621.jpg" style="width: 300px;height: 300px">
<img alt="" src="https://media.istockphoto.com/photos/businessman-using-a-computer-to-document-management-concept-online-picture-id1386672473?b=1&k=20&m=1386672473&s=170667a&w=0&h=wyEIM2lPONuvORvZOD92h01g_FpDvKwOZu57hnvNNuk=" style="width: 300px;height: 300px">

<h2><a href="/customerlogin" class="view"><button style="margin-right: 532px;width: 233px;height: 50px;">View all Products</button></a></h2></div></div>
</main>

<footer>
<div class="logo">
<img alt="logo" src="https://png.pngtree.com/png-vector/20191029/ourmid/pngtree-address-icon-isolated-on-abstract-background-png-image_1901952.jpg" width="150px" height="100px" style="width: 100px;">
</div>
<div>
<ul>
<li><span class="fa fa-phone"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="tel:+044 656565">customer care:+044 656565</a></li>
<li><span class="fa fa-gmail">&#xf0e0;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="mailto:mars1234@gmail.com">mars1234@gmail.com</a>
</ul>
</div>

<div class="addr">
No 85, J J Street,<br>Golden City,<br>Madurai,<br>Tamil
Nadu.
</div>
</footer>
 Ayanambakkam, Chennai - 600095 (Behind Apollo Nursing College, Poniamman Nagar)
<script>
  <%@include file="/WEB-INF/script/webapp.js"%>
</script>
</body>
</html>
