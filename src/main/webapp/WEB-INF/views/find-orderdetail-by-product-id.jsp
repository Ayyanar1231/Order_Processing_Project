<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Orders</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style><%@include file="/WEB-INF/css/find-order-detail-by-product-id.css"%>
.table-size{
border:2; 
width:100%; 
cellpadding:2;
background-color:#cce6ff;
}
</style>
</head>
<body>
	<div id="root">
		<div class="orders" id="form">
		<button  onclick="document.location='/orderdetail/listorderdetail'"
			style="float: right;">Back</button>
			<form:form action="getorderdetailbyproduct" method="post"
				modelAttribute="fetchOrderDetail">
				<div>
					<label for="orderId">Order Id : </label>
					<div>
						<form:input path="orderId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="productId">Product Id :</label>
					<div>
						<form:input path="productId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="quantity">Quantity :</label>
					<div>
						<form:input path="quantity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="price">Price :</label>
					<div>
						<form:input path="price" readonly="true" />
					</div>
				</div>
				<div>
					<label for="totalAmount">Total Amount :</label>
					<div>
						<form:input path="totalAmount" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
		<div class="order" id="fetchOrder">
			<table class="table-size">
			<caption></caption>
				<thead>
					<tr>
						<th>Order Id</th>
						<th>Customer Id</th>
						<th>Order Date</th>
						<th>Shiped Date</th>
						<th>Delivery Fees</th>
						<th>Order Amount</th>
						<th>Payment Type</th>
						<th>Payment Reference Number</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${fetchOrder.orderId}</td>
						<td>${fetchOrder.customerId}</td>
						<td>${fetchOrder.orderDate}</td>
						<td>${fetchOrder.shipDate}</td>
						<td>${fetchOrder.deliveryFees}</td>
						<td>${fetchOrder.orderAmount}</td>
						<td>${fetchOrder.paymentType}</td>
						<td>${fetchOrder.paymentReferenceNumber}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="product" id=" fetchProduct">
			<table class="table-size">
			<caption></caption>
				<thead>
					<tr>
						<th>Product Id</th>
						<th>Product Name</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Stock</th>
						<th>Brand</th>
						<th>Colour</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${fetchProduct.productId}</td>
						<td>${fetchProduct.productName}</td>
						<td>${fetchProduct.price}</td>
						<td>${fetchProduct.quantity}</td>
						<td>${fetchProduct.stockInHand}</td>
						<td>${fetchProduct.brand}</td>
						<td>${fetchProduct.colour}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>