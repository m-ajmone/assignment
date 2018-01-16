<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
		<div class="jumbotron">
			<h1>Hi!</h1>
			<c:if test="${pageContext.request.userPrincipal != null}">
				<form id="logoutForm" method="POST" action="${contextPath}/logout">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>

				<h2>
					Welcome <strong>${pageContext.request.userPrincipal.name}</strong>
					<br /> <br /> <a class="btn btn-danger btn-lg" href="#"
						role="button" onclick="document.forms['logoutForm'].submit()">Logout</a>

					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<a href="/userlist" class="btn btn-primary btn-lg" role="button">User
							list</a>
					</sec:authorize>

				</h2>

			</c:if>
		</div>
	</div>
</body>
</html>