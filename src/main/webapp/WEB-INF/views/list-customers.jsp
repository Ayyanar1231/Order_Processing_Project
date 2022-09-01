<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style><%@include file="/WEB-INF/css/list-customer.css"%>
.table-size{
    width: 2260px;
    background-color: #cce6ff;
}
</style>
</head>
<body>
<div class="image">
<button class="btn" onclick="document.location='/admin'"
			style="float: right;">Back</button>
			<h2>Costomer Detail List</h2>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
		<caption></caption>
			<colgroup>
				<col span="18" style="background-color: MediumTurquoise">
			</colgroup>
			<thead>
				<tr>
					<th>Customer Id</th>
					<th>Email Id</th>
					<th>Join Date</th>
					<th>Customer Name</th>
					<th>Gender</th>
					<th>Phone Number</th>
					<th>Address</th>
					<th>District</th>
					<th>State</th>
					<th>Country</th>
					<th>Pin Code</th>
					<th>Delete</th>
					<th>Find Id</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="customer" items="${allCustomer}">
					<tr>
						<td>${customer.customerId}</td>
						<td>${customer.emailId}</td>
						<td>${customer.joinDate}</td>
						<td>${customer.customerName}</td>
						<td>${customer.gender}</td>
						<td>${customer.phoneNumber}</td>
						<td>${customer.address}</td>
						<td>${customer.district}</td>
						<td>${customer.state}</td>
						<td>${customer.country}</td>
						<td>${customer.pinCode}</td>
						<td><a
							href="deletecustomer?customerId=${customer.customerId }">Delete</a>
						<td><a
							href="getcustomerbyid?customerId=${customer.customerId}">Find</a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>