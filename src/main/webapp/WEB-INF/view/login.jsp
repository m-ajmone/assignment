<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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

			<div class="col-md-3"></div>

			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">Login</div>
					<div class="panel-body">

						<form:form method="POST" modelAttribute="user" action="/login">

							<div class="${error != null ? 'alert alert-danger' : ''}">${error}</div>

							<spring:bind path="username">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label for="username">Username</label>
									<form:input id="username" type="text" path="username"
										maxlength="16" placeholder="Username" autofocus="true"
										class="form-control"></form:input>
								</div>
							</spring:bind>


							<spring:bind path="password">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label for="password">Password</label>
									<form:input id="password" type="password" path="password"
										maxlength="16" placeholder="Password" class="form-control"></form:input>
								</div>
							</spring:bind>

							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

							<button type="submit" class="btn btn-primary btn-lg btn-block">Log
								in</button>
						</form:form>

					</div>
				</div>
			</div>

			<div class="col-md-3"></div>
		</div>
	</div>
</body>

</html>