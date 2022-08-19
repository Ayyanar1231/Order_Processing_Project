<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Added Order</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addorder" method="post" modelAttribute="orderList">
				<div>
					<label for="order_id">Order Id :</label>
					<div>
						<form:input  path="order_id" />
					</div>
				</div>
				<div>
					<label for="customerId">Customer Id :</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="order_date">Order Date :</label>
					<div>
						<form:input path="order_date" />
					</div>
				</div>
				<div>
					<label for="ship_date">Shiped Date :</label>
					<div>
						<form:input path="ship_date" />
					</div>
				</div>
				<div>
					<label for="delivery_fees">Delivery Fees :</label>
					<div>
						<form:input path="delivery_fees" />
					</div>
				</div>
				<div>
					<label for="order_amount">Order Amount :</label>
					<div>
						<form:input path="order_amount" />
					</div>
				</div>
				<div>
					<label for="payment_type">Payment Type :</label>
					<div>
						<form:input path="payment_type" />
					</div>
				</div>
				<div>
					<label for="payment_reference_number">Payment References Number :</label>
					<div>
						<form:input path="payment_reference_number" />
					</div>
				</div>
					<div>
						<form:button>New Order</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>