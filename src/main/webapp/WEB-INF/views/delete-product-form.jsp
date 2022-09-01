<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<style>
<%@include file="/WEB-INF/css/list-filter.css"%>
</style>
</head>
<body>
<button onclick="document.location='/webapp'" style="float: right;">Home</button>
		<button onclick="document.location='/admin'"
			style="float: left;">Back</button>
	<h3>Update</h3>
	<h3>${message}</h3>
	<br>
	<form action=deleteproduct method="get" style="margin: 0;">
		<label>Product Id;</label> <input type="number" required="true" placeholder="Deleted Product Id"
			name="productId"> <input type='submit' value="Get" name="submit">
	</form>
</body>
</html>