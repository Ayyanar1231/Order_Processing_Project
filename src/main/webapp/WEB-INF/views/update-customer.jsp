<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
</head>
<body>
	<div class="container" id="root">
		<div class="header" id="form">
			<form:form class="form" action="update" method="post" modelAttribute="updateCustomer">
				<div>
					<label for="customerId">Customer Id :</label>
					<form:input type="number" path="customerId" />
					<form:errors path="customerId" class="text-danger" />
				</div>
				<div>
					<label for="customerUserName">Customer Username :</label>
					<form:input type="text" placeholder="Enter Username"
						path="customerUserName" />
					<form:errors path="customerUserName" class="text-danger" />
				</div>
				<div>
					<label for="customerPassword">Customer Password :</label>
					<form:input type="text" placeholder="Enter Password"
						path="customerPassword" />
					<form:errors path="customerPassword" class="text-danger" />
				</div>
				<div>
					<label for="customerName">Customer Name :</label>
					<form:input type="text" placeholder="Enter Name"
						path="customerName" />
					<form:errors path="customerName" class="text-danger" />
				</div>
				<div>
					<label for="emailId">Email Id :</label>
					<form:input type="text" placeholder="Enter Email" path="emailId" />
					<form:errors path="emailId" class="text-danger" />
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
					<form:input type="text" placeholder="Enter PhoneNo"
						path="phoneNumber" />
					<form:errors path="phoneNumber" class="text-danger" />
				</div>
				<div>
					<label for="accountNumber">Account Number :</label>
					<form:input type="text" placeholder="Enter AccountNo"
						path="accountNumber" />
					<form:errors path="accountNumber" class="text-danger" />
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
					<form:input type="text" placeholder="Enter Pin" path="pinCode" />
				</div>
				<form:errors path="pinCode" class="text-danger" />
				<p>
					<form:button>Update</form:button>
				</p>
				</form:form>
		</div>
	</div>
</body>
</html>