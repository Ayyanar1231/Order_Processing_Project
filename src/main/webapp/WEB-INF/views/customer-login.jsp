<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<style>
<%@include file="/WEB-INF/css/login.css"%>
</style>
</head>
<body>
	<div class="main" style="width:0px;">
		<div class="navbar">
			<div class="icon">
				<h2 class="logo" style="margin-top: 63px;">ToDo</h2>
			</div>
			<nav style="width: 1365px">
			<div class="menu" style="margin-bottom: -41px;">
				<ul style="margin-left: 734px;margin-bottom: 59px;">
					<li><a href="/webapp">Home</a></li>
					<li></li>
					<li><a href="https://www.flipkartcareers.com/#!/aboutus">About</a></li>
					
				</ul>
			</div>
			</nav>
			

		</div>
			<div class="form">
				<form:form action="checkcustomerlogin" method="post"
			modelAttribute="customer">
					<h2>Login Here</h2>
					<input type="email"  title="example12@gmail.com" name="emailId" placeholder="Enter Name Here" required="true">
					<input type="password" name="customerPassword" id="myInput"
						placeholder="Enter Password Here" required="true">
					
					<input type="checkbox" onclick="myFunction()" style="width: 28px;
    				height: 19px;"><p style="color:white; margin-left: 31px;
    				margin-top: -20px;">Show Password</p>
				
					<p>${message}</p>
					<button type="submit" class="btnn">Login</button>
					
					<div class="btnn">
						<a href="/customer/addcustomer">Sign up </a>
					</div>
				</form:form>
			</div>
		</div>
</body>
<script>
<%@include file="/WEB-INF/script/customer-login.js"%>
</script>
</html>