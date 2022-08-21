<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/css/webapp.css"%>
</style>
</head>
<body>
	<div id="form" class="form">
		<form:form action="index" method="post">
				<h1><span class="fa fa-shopping-cart" style="font-size:48px;color:#d5d9d7"></span>Welcome to the Flipkart<span class="fa fa-shopping-cart" style="font-size:48px;color:#d5d9d7"></span></h1>
			<div class="layout">
					<div class='fas fa-user-cog' style='font-size: 90px;margin-left: -413px; color: #fd74b9;background-color: #100101;'>
						<h2>
							<a href="/adminlogin" style="text-decoration: none;color: #25fd22;" class="test">ADMIN
								LOGIN</a><br>
						</h2>
					</div>
					<div class='fas fa-users'
						style='font-size: 90px; color: #fd74b9;margin-left: 926px;background-color: #100101;'>
						<h2>
							<a href="/customerlogin" style="text-decoration: none;color: #25fd22;"
								class="test">CUSTOMER LOGIN</a>
						</h2>
					</div>
			</div>
		</form:form>

	</div>
</body>
</html>