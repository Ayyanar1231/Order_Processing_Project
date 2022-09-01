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
		<%-- <div class="header" id="form">
			<form:form action="/orderdetail/add" method="post"
				modelAttribute="addOrderDetails">
				<div>
					<label for="orderId">Order Id :</label>
					<form:input path="orderId" readonly="true"/>
					<form:errors path="orderId" class="text-danger"></form:errors>
				</div>
				<div>
					<label for="productId">Product Id :</label>
					<form:input path="productId" readonly="true"/>
					<form:errors path="productId" class="text-danger"></form:errors>
				</div>
				<div>
					<label for="quantity">Quantity :</label>
					<form:input path="quantity" id="quantity"
						onchange="amountCalculate()" />
					<form:errors path="quantity" class="text-danger"></form:errors>
				</div>
				<div>
					<label for="price">Price :</label>
					<form:input path="price" id="price" onchange="amountCalculate()" readonly="true"/>
					<form:errors path="price" class="text-danger"></form:errors>
				</div>
				<div>
					<label for="totalAmount">Total Amount :</label>
					<form:input path="totalAmount" id="totalAmount"
						onchange="amountCalculate(this.form)" readonly="true"/>
					<form:errors path="totalAmount" class="text-danger"></form:errors>
				</div>
				<div>
					<button class="btn">New Order Done</button>
				</div>
			</form:form>
	</div> --%>
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
<script type="text/javascript">
	function amountCalculate() {
		var quantity = document.getElementById("quantity").value;
		var price = document.getElementById("price").value;
		var totalAmount = parseInt(quantity) * parseInt(price);

		document.getElementById("totalAmount").value = totalAmount;
		return totalAmount;
	}
</script>
</html>