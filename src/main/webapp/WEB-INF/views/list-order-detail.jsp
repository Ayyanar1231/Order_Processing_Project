<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style><%@include file="/WEB-INF/css/list-order-detail.css"%>
.table-size{
width:100%; 
background-color:#cce6ff;
}
</style>
</head>
<body>
<button  onclick="document.location='/admin'"
			style="float: right;">Back</button>
<h2>Order Detail List</h2>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<colgroup>
				<col span="7" style="background-color: MediumTurquoise">
			</colgroup>
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Product</th>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Total Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orderdetail" items="${allOrderDetail}">
					<tr>
						<td>${orderdetail.orderId}</td>
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
</body>
</html>