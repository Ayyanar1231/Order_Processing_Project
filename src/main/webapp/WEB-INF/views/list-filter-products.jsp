<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Filter Price</title>
<style>
<%@include file="/WEB-INF/css/list-filter.css"%>
</style>
</head>
<body>
<button onclick="document.location='/webapp'" style="float: right;">Home</button>
		<button onclick="document.location='/product/listproduct'"
			style="float: left;">Back</button>
	<h3>Filter</h3>
	<br>
	<form action="price" method="get" style="margin: 0;">
		<label>Enter Price</label> <input type="text" placeholder="price"
			name="price"> <input type='submit' value="Get" name="submit">
	</form>
</body>
</html>