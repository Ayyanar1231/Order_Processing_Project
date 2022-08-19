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
				<col span="17" style="background-color: MediumTurquoise">
			</colgroup>
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Customer Id</th>
					<th>Order Date</th>
					<th>shiped Date</th>
					<th>Delivery Fees</th>
					<th>Order Amount</th>
					<th>Payment Type</th>
					<th>payment Reference Number</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orders" items="${allOrders}">
					<tr>
						<td>${orders.orderId}</td>
						<td>${orders.customerId}</td>
						<td>${orders.orderDate}</td>
						<td>${orders.shipDate}</td>
						<td>${orders.deliveryFees}</td>
						<td>${orders.orderAmount}</td>
						<td>${orders.paymentType}</td>
						<td>${orders.paymentReferenceNumber}</td>
						<td><a href="updateorderdetail?orderId=${orders.orderId}">Edit</a></td>
						<td><a href="deleteorderdetail?orderId=${orders.orderId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="addorder">
		<a href="addorder">Add New Order</a>
	</div>
</body>
</html>