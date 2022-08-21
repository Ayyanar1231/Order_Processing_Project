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
<style><%@include file="/WEB-INF/css/find-order-detail-by-order-id.css"%>
.table-size{
border:2; 
width:100%; 
cellpadding:2;
background-color:#cce6ff;
}

</style>
</head>
<body>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<colgroup>
				<col span="5" style="background-color: MediumTurquoise">
			</colgroup>
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Product Id</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Total Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orderdetail" items="${fetchOrderDetail}">
					<tr>
						<td>${orderdetail.orderId}</td>
						<td>${orderdetail.productId}</td>
						<td>${orderdetail.quantity}</td>
						<td>${orderdetail.price}</td>
						<td>${orderdetail.totalAmount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<div style="color: red">
		<a href="/ordersuccess" ><button class="btn">Done</button></a>
	</div>
</body>
</html>