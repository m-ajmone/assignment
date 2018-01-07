<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Registration</title>
<!--Bootstrap CSS-->
<link rel="stylesheet"
	href="/webjars/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
<!--Bootstrap JS-->
<script src="/webjars/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<span class="navbar-brand mb-0 h1">Assignment 3</span>
	</nav>
	<div class="container">

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="card mt-5">

					<div class="card-header">Registration</div>
					<div class="card-body">
						<h1 class="card-title"></h1>

						<form:form method="POST" modelAttribute="user">


							<spring:bind path="username">
								<div class="form-group">
									<label for="username">Username</label>
									<form:input id="username" type="text" path="username"
										maxlength="16" placeholder="Username" autofocus="true"
										class="form-control"></form:input>
									<form:errors path="username"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="email">
								<div class="form-group">
									<label for="email">Email</label>
									<form:input id="email" type="text" path="email" maxlength="50"
										placeholder="Email" class="form-control"></form:input>
									<form:errors path="email"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="password">
								<div class="form-group">
									<label for="password">Password</label>
									<form:input id="password" type="password" path="password"
										maxlength="16" placeholder="Password" class="form-control"></form:input>
									<form:errors path="password"></form:errors>
								</div>
							</spring:bind>

							<spring:bind path="passwordConfirm">
								<div class="form-group">
									<label for="password-confirm">Confirm password</label>
									<form:input id="password-confirm" type="password"
										path="passwordConfirm" placeholder="Confirm your password"
										maxlength="16" class="form-control"></form:input>
									<form:errors path="passwordConfirm"></form:errors>
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