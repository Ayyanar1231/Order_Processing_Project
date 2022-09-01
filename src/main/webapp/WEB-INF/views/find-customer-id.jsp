<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Customer Id</title>
<style>
<%@include file="/WEB-INF/css/find-customer-id.css"%>
</style>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
		<button class="btn" onclick="document.location='/customer/listcustomer'"
			style="float: center;">Back</button>
			<form:form class="form" action="getcustomerbyid" method="post"
				modelAttribute="getCustomerById">
				<div>
					<label for="customerId">Customer Id :</label>
					<form:input type="number" path="customerId" readonly="true"/>
					<form:errors path="customerId" class="text-danger" />
				</div>
				<div>
					<label for="emailId">Email Id :</label>
					<form:input type="text" placeholder="Enter Email" path="emailId" readonly="true"/>
					<form:errors path="emailId" class="text-danger" />
				</div>
				<div>
					<label for="customerPassword">Customer Password :</label>
					<form:input type="text" placeholder="Enter Password"
						path="customerPassword" readonly="true"/>
					<form:errors path="customerPassword" class="text-danger" />
				</div>
				<div>
					<label for="customerName">Customer Name :</label>
					<form:input type="text" placeholder="Enter Name"
						path="customerName" readonly="true"/>
					<form:errors path="customerName" class="text-danger" />
				</div>
				<div>
					<label for="gender">Gender :</label>
					<form:radiobutton path="gender" value="Male" readonly="true"/>
					Male
					<form:radiobutton path="gender" value="Female" readonly="true" />
					Female
					<form:errors path="gender" class="text-danger" />
				</div>
				<div>
					<label for="phoneNumber">Phone Number : </label>
					<form:input type="text" placeholder="Enter PhoneNo"
						path="phoneNumber" readonly="true"/>
					<form:errors path="phoneNumber" class="text-danger" />
				</div>
				<div>
					<label for="address">Address :</label>
					<form:input type="text" placeholder="Enter Address" path="address" readonly="true"/>
					<form:errors path="address" class="text-danger" />
				</div>
				<div>
					<label for="district">District :</label>
					<form:input type="text" placeholder="Enter district"
						path="district" />
					<form:errors path="district" class="text-danger" readonly="true"/>
				</div>
				<div>
					<label for="state">State :</label>
					<form:input type="text" placeholder="Enter State" path="state" readonly="true"/>
					<form:errors path="state" class="text-danger" />
				</div>
				<div>
					<label for="country">Country :</label>
					<form:select path="country" readonly="true">
						<form:option value="India" label="India" />
					</form:select>
					<form:errors path="country" class="text-danger" />
				</div>
				<div>
					<label for="pinCode">Pin Code :</label>
					<form:input type="text" placeholder="Enter Pin" path="pinCode" readonly="true"/>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>