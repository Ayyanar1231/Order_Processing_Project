<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Order Detail</title>
<style>
<%@include file="/WEB-INF/css/add-order-detail.css"%>
</style>
</head>
<body>
	<div class="form" id="root">
		<button class="btn" onclick="document.location='/product/listproduct'" style="float: right;">Home</button>
		<button class="btn" onclick="document.location='/orders/addorder'"
			style="float: left;">Back</button>
		<br> <br>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<colgroup>
				<col span="7" style="background-color: MediumTurquoise">
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
				<c:forEach var="orderdetail" items="${allOrderDetails}">
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
</div>
</body>
<script>
<%@include file="/WEB-INF/script/add-order-detail.js"%>
</script>
</html>