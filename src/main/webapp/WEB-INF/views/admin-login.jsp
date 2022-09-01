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
	<div>
		<form:form action="checkadminlogin" method="post"
			modelAttribute="admin">
			<h2>${message}</h2>
			<h1 class="h1">Admin Login</h1>
			<div class="inset">
				<p>
					<label for="adminEmail">ADMIN E-MAIL :</label>
					<form:input type="email" placeholder="Enter your E-mail" title="example12@gmail.com"
						path="adminEmail" required="true"/>
				</p>
				<p>
					<label for="adminPassword">ADMIN PASSWORD :</label>
					<form:input type="password" placeholder="Enter password" 
						path="adminPassword" required="true"/>
				</p>
			</div>
			<p>
				<input type="submit" name="go" id="go" value="Log in">
			</p>
		</form:form>
	</div>
</body>
</html>