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
<style><%@include file="/WEB-INF/css/list-customer-order.css"%>
.table-size{
border:2; 
width:100%; 
cellpadding:2;
background-color:#cce6ff;
}
</style>
</head>
<body>
<h2>Your Order Details</h2>
	<div id="root">
		<div id="orderList">
			<table class="table-size">
			<caption></caption>
				<thead>
					<tr>
						<th>Order Id</th>
						<th>Order Date</th>
						<th>Shiped Date</th>
						<th>Delivery Fees</th>
						<th>Order Amount</th>
						<th>Payment Type</th>
						<th>Reference Number</th>
						<th>View Your Product</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="order" items="${orderList}">
						<tr>
							<td>${order.orderId}</td>
							<td>${order.orderDate}</td>
							<td>${order.shipDate}</td>
							<td>${order.deliveryFees}</td>
							<td>${order.orderAmount}</td>
							<td>${order.paymentType}</td>
							<td>${order.paymentReferenceNumber}</td>
							<td><a href="/orderdetail/listorderdetail?orderId=${order.orderId}">View Product</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>