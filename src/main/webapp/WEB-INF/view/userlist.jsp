<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>User list</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="page-header">
			<h1>Assignment 3 - MVC</h1>
		</div>
		<div class="row">

			<div class="col-md-2"></div>

			<div class="col-md-8">
				<a href="/" class="btn btn-primary" role="button"> <span
					class="glyphicon glyphicon-home" aria-hidden="true"></span> Homepage
				</a> <br /><br />
				<div class="panel panel-primary">
					<div class="panel-heading">Users</div>
					<div class="panel-body">
						<table class="table table-bordered">
							<tr>
								<th class="text-center" style="width: 20px">Username</th>
								<th class="text-center" style="width: 20px">Password</th>
								<th class="text-center" style="width: 20px">Email</th>
								<th class="text-center" style="width: 20px">Country</th>
								<th class="text-center" style="width: 20px">City</th>
								<th class="text-center" style="width: 20px">Roles</th>
							</tr>
							<c:forEach items="${userList}" var="user">
								<tr>
									<td class="text-center">${user.username}</td>
									<td class="text-center">${user.password}</td>
									<td class="text-center">${user.email}</td>
									<td class="text-center">${user.country}</td>
									<td class="text-center">${user.city}</td>
									<td class="text-center"><c:forEach
											items="${user.getRoles()}" var="role">
												${role.name}
											</c:forEach></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-2"></div>
		</div>
	</div>

</body>
</html>