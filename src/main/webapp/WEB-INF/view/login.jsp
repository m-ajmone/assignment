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

						<form method="POST" action="/login">

							<div class="${error != null ? 'alert alert-danger' : ''}">${error}</div>
							<div class="form-group">
								<label for="username">Username</label> <input name="username"
									type="text" maxlength="16" placeholder="Username"
									autofocus="true" class="form-control"> </input>
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input name="password"
									type="password" maxlength="16" placeholder="Password"
									class="form-control"> </input> <input type="hidden"
									name="${_csrf.parameterName}" value="${_csrf.token}" />
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-lg btn-block">Log
									in</button>
							</div>
							<div class="form-group">
								<span>Don't have an account? </span><a href="/registration">Register</a>
							</div>
						</form>

					</div>
				</div>
			</div>

			<div class="col-md-3"></div>
		</div>
	</div>
</body>

</html>