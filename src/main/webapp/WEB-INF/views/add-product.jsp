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
<%@include file="/WEB-INF/css/add-product.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
		<button  onclick="document.location='/admin'"
			style="float: center;">Back</button>
			<form:form class="form" action="/product/add" method="post"
				object="product" enctype="multipart/form-data"
				modelAttribute="addProduct">
				<div>
					<label for="productName">product Name</label>
					<form:input path="productName" type="text"
						placeholder="Enter the Product Name"
						title="min 3 letters in alphabets"
						pattern="^[A-Za-z]\\w{3,50}$" name="productName" required="true" />
					<form:errors path="productName" class="text-danger" />
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<form:input path="quantity" title="Quantity can't be empty "
						 required="true" pattern='[0-9]{2}' placeholder='12'
						name="quantity" />
				</div>
				<div>
					<label for="price">Price</label>
					<form:input path="price" placeholder="normalFees" name="price" 
						title="Fees can't be empty or must contains only numbers"
						pattern="^[0-9]+$" required="true" />
					<form:errors path="price" class="text-danger" />
				</div>
				<div>
					<label for="stockInHand">Stock</label>
					<form:input path="stockInHand" title="Stock can't be empty "
						type="acc" required="true" pattern='[0-9]{2}' placeholder='12'
						name="quantity"/>
					<form:errors path="stockInHand" class="text-danger" />
				</div>
				<div>
					<label for="brand">Brand</label>
					<form:input type="text" path="brand" placeholder="Enter the Brand"
						title="Brand can't be empty or must contain only alphabets"
						name="brand" required="true" />
					<form:errors path="brand" class="text-danger" />
				</div>
				<div>
					<label for="colour">Colour</label>
					<form:input type="text" path="colour" placeholder="Enter the colour"
						title="Colour can't be empty or must contain only alphabets"
						name="brand" required="true" />
					<form:errors path="colour" class="text-danger" />
				</div>
				<div class="col-sm-5">
					<p>Product Image</p>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="productImage"
							accept="image/jpeg, image/png ,image/jpg" id="productImage" /> <label
							class="custom-file-label" for=productImage>Choosefile</label>
					</div>
				</div>
				<input type="hidden" name="imgName" value="product.image">
				<form:button type="submit" class="btn">Add Product</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>