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
<%@include file="/WEB-INF/css/admin-login.css"%>
</style>
</head>
<body>
	<form:form action="checkadminlogin" method="post"
		modelAttribute="admin">
		<h2>Invalid Admin</h2>
		<div class="invalid">Check your admin name and password</div>
		<h1>Admin Login</h1>
		<div class="inset">
			<p>
				<label for="adminName">USERNAME :</label>
				<form:input type="text" placeholder="Enter name"
					path="adminName" />
			</p>
			<p>
				<label for="adminPassword">PASSWORD :</label>
				<form:input type="password" placeholder="Enter password"
					path="adminPassword" />
			</p>
		</div>
		<p>
			<input type="submit" name="go" id="go" value="Log in">
		</p>
	</form:form>
</body>
</html>