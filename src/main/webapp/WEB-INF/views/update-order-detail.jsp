<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Order Detail</title>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<form:form class="form" action="update" method="post"
				modelAttribute="updateOrderDetail">
				<div>
					<label for="orderId">Order Id :</label>
					<form:input path="orderId" />
				</div>
				<div>
					<label for="productId">Product Id :</label>
					<form:input path="productId" />
				</div>
				<div>
					<label for="quantity">Quantity :</label>
					<form:input path="quantity" />
				</div>
				<div>
					<label for="price">Price :</label>
					<form:input path="price" />
				</div>
				<div>
					<label for="totalAmount">Total Amount :</label>
					<form:input path="totalAmount" />
				</div>
				<div>
					<form:button>Updated Order Detail</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>