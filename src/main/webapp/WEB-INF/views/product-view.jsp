<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
</head>
<body>
	<div id="table root">
		<table>
		<caption></caption>
			<colgroup>
				<col span="8" style="background-color: MediumTurquoise">
			</colgroup>
			<thead>
				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Stock</th>
					<th>Brand</th>
					<th>Colour</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${allProduct}">
					<tr>
						<td>${product.productId}</td>
						<td>${product.productName}</td>
						<td>${product.price}</td>
						<td>${product.quantity}</td>
						<td>${product.stockInHand}</td>
						<td>${product.brand}</td>
						<td>${product.colour}</td>
						<td><a
							href="updateproduct?productId=${product.productId}">Edit</a></td>
						<td><a
							href="deleteproduct?productId=${product.productId}">Delete</a></td>

						<td><a
							href="getproductbyid?productId=${product.productId}">Find
								Id</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>