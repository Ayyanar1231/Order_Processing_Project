<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Order</title>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<form:form class="form" action="update" method="post" modelAttribute="updateOrder">
				<div>
					<label for="orderId">Order Id :</label>
					<form:input type="number" path="orderId" />
					<form:errors path="orderId" class="text-danger" />
				</div>
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
					<label for="orderAmount">Order Amount :</label>
					<form:input type="number" path="orderAmount" />
					<form:errors path="orderAmount" class="text-danger" />
				</div>
				<div>
					<label for="paymentType">Payment Type :</label>
					<form:input  path="paymentType" />
					<form:errors path="paymentType" class="text-danger" />
				</div>
				<div>
					<label for="paymentReferenceNumber">Delivery Reference Number :</label>
					<form:input type="text" placeholder="Reference number"
						path="paymentReferenceNumber" />
					<form:errors path="paymentReferenceNumber" class="text-danger" />
				</div>
				<div>
					<%-- <form:button>Order Now</form:button> --%>
					<form:button>Update Order</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>