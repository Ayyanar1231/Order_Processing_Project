<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Order</title>
<style>
<%@include file="/WEB-INF/css/add-orders.css"%>
</style>
</head>
<body>

	<div class="form" id="root">
		<button class="btn" onclick="document.location='/product/listproduct'">Home</button>
		<br> <br>
		<div class="header" id="form">
			<form:form action="/orders/add" method="post"
				modelAttribute="addOrder">
				<div>
					<label for="customerId">Customer Id :</label>
					<form:input type="number" path="customerId" />
					<form:errors path="customerId" class="text-danger" />
				</div>
				<div>
					<label for="deliveryFees">Delivery Fees :</label>
					<form:input type="number" path="deliveryFees" />
					<form:errors path="deliveryFees" class="text-danger" />
				</div>
				<div>
					<label for="paymentType">Payment Type :</label>
					<form:radiobutton path="paymentType" value="Online" />
					Online
					<form:radiobutton path="paymentType" value="Case On Delivery" />
					Case On Delivery
					<form:errors path="paymentType" class="text-danger" />
				</div>
				<div>
					<label for="paymentReferenceNumber">Reference Number :</label>
					<form:input path="paymentReferenceNumber" id="referanceNumber" />
					<form:errors path="paymentReferenceNumber" class="text-danger"></form:errors>
				</div>
				<br>
				<div>
					<button class="btn" style="float: center;">Order Now</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
<script type="text/javascript">
	document.getElementById("referanceNumber").value = Math.floor(Math.random() * 100000);
</script>
</html>