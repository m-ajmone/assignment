<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
<link href="<c:url value="/resources/css/assignment.css" />"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/assignment.css"
	rel="stylesheet">
<!--Bootstrap CSS-->
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">
<!--Bootstrap JS-->
<script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="page-header">
			<h1>Assignment 3</h1>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary">
					<div class="panel-heading">Registration</div>
					<div class="panel-body">
						<form:form method="POST" modelAttribute="user">

							<spring:bind path="username">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label for="username">Username</label>
									<form:input id="username" type="text" path="username"
										maxlength="16" placeholder="Username" autofocus="true"
										class="form-control"></form:input>
									<form:errors path="username" class="control-label"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="email">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label for="email">Email</label>
									<form:input id="email" type="text" path="email" maxlength="50"
										placeholder="Email" class="form-control"></form:input>
									<form:errors path="email" class="control-label"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="password">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label for="password">Password</label>
									<form:input id="password" type="password" path="password"
										maxlength="16" placeholder="Password" class="form-control"></form:input>
									<form:errors path="password" class="control-label"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="passwordConfirm">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label for="password-confirm">Confirm password</label>
									<form:input id="password-confirm" type="password"
										path="passwordConfirm" placeholder="Confirm your password"
										maxlength="16" class="form-control"></form:input>
									<form:errors path="passwordConfirm" class="control-label"></form:errors>
								</div>
							</spring:bind>


							<button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
						</form:form>
					</div>
				</div>
			</div>

			<div class="col-md-2"></div>
		</div>
	</div>

</body>
</html>