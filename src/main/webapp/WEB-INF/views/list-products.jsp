<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
</head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	
<style><%@include file="/WEB-INF/css/list-product.css"%>.table-size {
	border: 2;
	width: 100%;
	cellpadding: 2;
	background-color: #cce6ff;
}
</style>
<body>
	<div >
		<button onclick="document.location='/webapp'" style="float: right;">Home</button>
		<button onclick="document.location='/customerlogin'"
			style="float: left;">Back</button>
		<button name="value"
			onclick="document.location='/product/getfilterprice'"
			style="float: center;">Filter Price</button>
	</div>
	<div id="table root">
		<table class="table-size">
			<caption></caption>
			<colgroup>
				<col span="10" style="background-color: MediumTurquoise">
			</colgroup>
			<thead>
				<tr>
					<th>Image</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Stock</th>
					<th>Brand</th>
					<th>Colour</th>
					<th>Order Now</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${allProduct}">
					<tr>
						<td><img
							src="file://D:/Users/ayya3114/eclipse-workspace/orderprocessing/src/main/resources/Images/${product.image}"
							alt="image" width="100" height="100"></td>
						<td>${product.productName}</td>
						<td>${product.price}</td>
						<td>${product.quantity}</td>
						<td>${product.stockInHand}</td>
						<td>${product.brand}</td>
						<td>${product.colour}</td>
						<td><a
							href="/product/getproductbyid?productId=${product.productId}"><button>View
									Product</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>