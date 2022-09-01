<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Web App</title>
<style>
<%@include file="/WEB-INF/css/order-success.css"%>
</style>
</head>
<body>
	<div>
		<h2>Successful Your Order</h2>
		<h4>Message is: ${message}</h4>
		<h1>
			<button class="btn" onclick="document.location='/product/productlist?orderId=0&cusId=${cusId}'">Home</button>
		</h1>
	</div>
</body>
</html>