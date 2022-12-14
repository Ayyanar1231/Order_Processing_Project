<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<style>
<%@include file="/WEB-INF/css/update-product.css"%>

</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<form:form class="form" action="/product/update" object="product"
				enctype="multipart/form-data" method="post"
				modelAttribute="updateProduct">
				<div>
					<label for="productName">product Name</label>
					<form:input path="productName" type="text"
						placeholder="Enter the Product Name"
						title="Product Name can't be empty or must contain only alphabets"
						pattern="^[A-Za-z]\\w{3,20}$" name="productName" required="true" />
					<form:errors path="productName" class="text-danger" readonly="true"/>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<form:input path="quantity" title="Quantity can't be empty "
						required="true" pattern='[0-9]{2}' placeholder='12'
						name="quantity" readonly="true"/>
				</div>
				<div>
					<label for="price">Price</label>
					<form:input path="price" placeholder="normalFees" name="price"
						title="Fees can't be empty or must contains only numbers"
						pattern="^[0-9]+$" required="true" />
					<form:errors path="price" class="text-danger" readonly="true"/>
				</div>
				<div>
					<label for="stockInHand">Stock</label>
					<form:input path="stockInHand" title="Stock can't be empty "
						type="acc" required="true" pattern='[0-9]{2}' placeholder='12'
						name="quantity" />
					<form:errors path="stockInHand" class="text-danger" readonly="true"/>
				</div>
				<div>
					<label for="brand">Brand</label>
					<form:input type="text" path="brand" placeholder="Enter the Brand"
						title="Brand can't be empty or must contain only alphabets"
						name="brand" required="true" />
					<form:errors path="brand" class="text-danger" readonly="true"/>
				</div>
				<div>
					<label for="colour">Colour</label>
					<form:input type="text" path="colour"
						placeholder="Enter the colour"
						title="Colour can't be empty or must contain only alphabets"
						name="brand" required="true" />
					<form:errors path="colour" class="text-danger" readonly="true"/>
				</div>
				<form:button type="submit" class="btn">Okay</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>