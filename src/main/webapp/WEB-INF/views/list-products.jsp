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
	
<style><%@include file="/WEB-INF/css/list-product.css"%>
</style>
<body>
	<div >
			<h2>Your Order Detail</h2>
	</div>
	
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<colgroup>
				<col span="7" style="background-color: MediumTurquoise">
			</colgroup>
			<thead>
				<tr>
					<th>Image</th>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Total Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orderdetail" items="${orderList}">
					<tr>
						<td><img
							src="file://D:/Users/ayya3114/eclipse-workspace/orderprocessing/src/main/resources/Images/${orderdetail.product.image}"
							alt="image" width="100" height="100"></td>
						<td>${orderdetail.product.productName}</td>
						<td>${orderdetail.quantity}</td>
						<td>${orderdetail.price}</td>
						<td>${orderdetail.totalAmount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div> 
		<div>
		<button onclick="document.location='/ordersuccess?orderId=${orderId}&cusId=${cusId}'"  style="margin-left: 601px;">Buy Now</button>
		</div>
		<br>
		<div>
		<h2>Product List</h2></div>
		<br>
	<div id="table root">
		<table class="table-size">
			<caption></caption>
			<colgroup>
				<col span="10" style="background-color: MediumTurquoise">
			</colgroup>
			<thead>
				<tr>
					<th>Product Id</th>
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
						<td>${product.productId}</td>
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
							href="/orders/addorder?productId=${product.productId}&cusId=${cusId}&orderId=${orderId}">Order
									Product</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>