<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
<%@include file="/WEB-INF/css/login.css"%>
</style>
</head>
<body>
	<form:form action="checkcustomerlogin" method="post"
		modelAttribute="customer">
		<h2>Invalid Customer</h2>
		<div class="invalid">Check your user name and password</div>
		<div class="h1">User Login</div>
		<div class="inset">
			<p>
				<label for="CustomerUserName">USERNAME :</label>
				<form:input type="text" placeholder="Enter Username"
					path="customerUserName" />
			</p>
			<p>
				<label for="customerPassword">PASSWORD :</label>
				<form:input type="password" placeholder="Enter Password"
					path="customerPassword" />
			</p>
		</div>
		<p>
			<input type="submit" name="go" id="go" value="Log in">
		</p>
		<div>
			<h3>
				<a href="/customer/addcustomer">Create New Account </a>
			</h3>
		</div>
	</form:form>
</body>
</html>