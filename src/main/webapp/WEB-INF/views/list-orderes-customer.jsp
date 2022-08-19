<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
.table-size{
border:2; 
width:100%; 
cellpadding:2;
background-color:#cce6ff;
}
div{text-align:center
}
}</style>
</head>
<body>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<colgroup>
				<col span="17" style="background-color: MediumTurquoise">
			</colgroup>
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Customer Name</th>
					<th>E mail</th>
					<th>Order Date</th>
					<th>ProductName</th>
					<th>Quantity</th>
					<th>Payment Type</th>
					<th>Payment Reference Number</th>
					<th>Order Amount</th>
					<th>Shiped Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orders" items="${allCustomerorders}">
					<tr>
						<td>${allCustomerorders.orderId}</td>
						<td>${allCustomerorders.customerDetail.customerName}</td>
						<td>${allCustomerorders.orderDate}</td>
						<td>${allProducts.product.productId}</td>
						<td>${allCustomerorders.product.quantity}</td>
						<td>${allCustomerorders.paymentType}</td>
						<td>${allCustomerorders.paymentReferenceNumber}</td>
						<td>${allCustomerorders.orderAmount}</td>
						<td>${allCustomerorders.shipDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
	<a href="addorder">Add New Order</a>
	</div>
</body>
</html>