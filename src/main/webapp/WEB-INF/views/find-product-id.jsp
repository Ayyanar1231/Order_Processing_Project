<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<style>
<%@include file="/WEB-INF/css/find-product-id.css"%>
</style>
</head>
<body>
	<div class="form" id="root">
		<button class="btn" onclick="document.location='/product/listproduct'"
			style="float: center;">Back</button>
		<div class="header" id="form">
			<form:form action="" method="post"
				modelAttribute="getProductById">
				<div>
					<label for="productId">Product Id :</label>
					<form:input type="number" path="productId" readonly="true"/>
					<form:errors path="productId" class="text-danger" />
				</div>
				<div>
					<label for="productName">Product Name :</label>
					<form:input type="text" placeholder="Enter Product Name"
						path="productName" readonly="true"/>
					<form:errors path="productName" class="text-danger" />
				</div>
				<div>
					<label for="price">Price :</label>
					<form:input type="number" path="price" readonly="true"/>
					<form:errors path="price" class="text-danger" />
				</div>
				<div>
					<label for="quantity">Quantity :</label>
					<form:input type="number" path="quantity" readonly="true"/>
					<form:errors path="quantity" class="text-danger" />
				</div>
				<div>
					<label for="stockInHand">Stock :</label>
					<form:input type="text" placeholder="Enter Stock"
						path="stockInHand" readonly="true"/>
					<form:errors path="stockInHand" class="text-danger" />
				</div>
				<div>
					<label for="brand">Brand :</label>
					<form:input type="text" placeholder="Enter Brand" path="brand" />
					<form:errors path="brand" class="text-danger" readonly="true"/>
				</div>
				<div>
					<label for="colour">Colour :</label>
					<form:input type="text" placeholder="Enter Colour" path="colour" />
					<form:errors path="colour" class="text-danger" readonly="true"/>
				</div>
				<br>

			</form:form>
			<button class="btn"  onclick="document.location='/orders/addorder'">Click Now</button>
		</div>
	</div>

</body>
</html>