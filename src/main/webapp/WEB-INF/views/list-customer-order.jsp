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
	<div id="root">
		<div id="cusform">
			<form:form action="getcustomerorder" method="post" modelAttribute="getCustomer">
				<div>
					<label for="customerName">Customer Name :</label>
					<div>
						<form:input path="customerName" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
		<br>
		<div id="orderList">
			<table class="table-size">
			<caption></caption>
				<thead>
					<tr>
						<th>Order Date</th>
						<th>Shiped Date</th>
						<th>Delivery Fees</th>
						<th>Order Amount</th>
						<th>Payment Type</th>
						<th>Payment Reference Number</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="order" items="${orderList}">
						<tr>
							<td>${order.orderDate}</td>
							<td>${order.shipDate}</td>
							<td>${order.deliveryFees}</td>
							<td>${order.orderAmount}</td>
							<td>${order.paymentType}</td>
							<td>${order.paymentReferenceNumber}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>