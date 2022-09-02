<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<style>
<%@include file="/WEB-INF/css/add-customer.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<p>
				<button class="btn" onclick="document.location='/webapp'">Back</button>
			</p>
			<form:form class="form" action="/customer/add" method="post"
				modelAttribute="addCustomer">

				<div>
					<label for="emailId">Email Id :</label>
					<form:input type="email" placeholder="example@gmail.com"
						pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$" path="emailId" />
					<form:errors path="emailId" class="text-danger" />
				</div>
				<div>
					<label for="customerPassword">Customer Password :</label>
					<form:input type="password" pattern="^[A-Za-z]\\w{3,20}$" placeholder="Enter Password" title="Password minimum 3 Alba letters"
						path="customerPassword" required="true" />
					<form:errors path="customerPassword" class="text-danger" />
				</div>
				<div>
					<label for="customerName">Customer Name :</label>
					<form:input type="text" placeholder="Enter Name"
						path="customerName" />
					<form:errors path="customerName" class="text-danger" />
				</div>
				<div>
					<label for="gender">Gender :</label>
					<form:radiobutton path="gender" value="Male" />
					Male
					<form:radiobutton path="gender" value="Female" />
					Female
					<form:errors path="gender" class="text-danger" />
				</div>
				<div>
					<label for="phoneNumber">Phone Number : </label>
					<form:input path="phoneNumber" title="Enter the 10 numbers" type="tel"
                        required="true" pattern='[0-9]{10}' placeholder='1234567890'
                        name="phoneNumber" onblur="numberCheck();"/>
					<form:errors path="phoneNumber" class="text-danger" />
				</div>
				<div>
					<label for="address">Address :</label>
					<form:input type="text" placeholder="Enter Address" path="address" />
					<form:errors path="address" class="text-danger" />
				</div>
				<div>
					<label for="district">District :</label>
					<form:input type="text" placeholder="Enter district"
						path="district" />
					<form:errors path="district" class="text-danger" />
				</div>
				<div>
					<label for="state">State :</label>
					<form:input type="text" placeholder="Enter State" path="state" />
					<form:errors path="state" class="text-danger" />
				</div>
				<div>
					<label for="country">Country :</label>
					<form:select path="country">
						<form:option value="India" label="India" />
					</form:select>
					<form:errors path="country" class="text-danger" />
				</div>
				<div>
					<label for="pinCode">Pin Code :</label>
					<form:input path="pinCode" title="Enter the 6 numbers" type="pin"
                         pattern='[0-9]{6}' placeholder='123456' required="true"
                        name="pinCode" onblur="numberCheck();" />
				</div>
				<form:errors path="pinCode" class="text-danger" />
				<h2>${message}<br>
				${result}</h2>
				<p>
					<form:button class="btn">Go To Login</form:button>
				</p>
			</form:form>
		</div>
	</div>
</body>
</html>