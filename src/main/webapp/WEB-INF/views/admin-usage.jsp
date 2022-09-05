<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Index</title>
<style>
<%@include file="/WEB-INF/css/admin-usage.css"%>
</style>
</head>
<body>
<div class="btn"><button onclick="document.location='/webapp'" class="btn" style="float: right;">Logout</button></div>
	<div class="header">
		<h1>Welcome to the FlipKart</h1>
		<h4>Message is: ${message}</h4>
	</div>
	<div class="customer">
		<h2>Customer Detail</h2>
		<h3>
			<ol>
				<li><a href="/customer/listcustomer">Customer List</a></li>
			</ol>
		</h3>
	</div>
	<div class="product">
		<h2>Product Detail</h2>
		<h3>
			<ol>
				<li><a href="/product/addproduct">Add New Product</a></li>
				<li><a href="/product/getdelete">Delete Product</a></li>
			</ol>
		</h3>
	</div>
	<div class="order">
		<h2>Orderd Detail</h2>
		<h3>
			<ol>
				<li><a href="/orderdetail/orderdetaillist">Order Detail
						List</a></li>
			</ol>
		</h3>
	</div>
</body>
</html>