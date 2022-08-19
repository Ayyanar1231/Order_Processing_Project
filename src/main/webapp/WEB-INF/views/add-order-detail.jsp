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
		<button onclick="document.location='/webapp'" style="float: right;">Home</button>
		<button onclick="document.location='/product/listproduct'"
			style="float: left;">Back</button>
		<br> <br>
		<div class="header" id="form">
			<form:form action="/orderdetail/add" method="post"
				modelAttribute="addOrderDetail">
				<div>
					<label for="orderId">Order Id :</label>
					<form:input path="orderId" />
					<form:errors path="orderId" class="text-danger"></form:errors>
				</div>
				<div>
					<label for="productId">Product Id :</label>
					<form:input path="productId" />
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
					<form:input path="price" id="price" onchange="amountCalculate()" />
					<form:errors path="price" class="text-danger"></form:errors>
				</div>
				<div>
					<label for="totalAmount">Total Amount :</label>
					<form:input path="totalAmount" id="totalAmount"
						onchange="amountCalculate(this.form)" />
					<form:errors path="totalAmount" class="text-danger"></form:errors>
				</div>
				<div>
					<form:button>Add New Order Detail</form:button>
				</div>
			</form:form>
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