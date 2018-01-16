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
			<h1>Assignment 3 - MVC</h1>
		</div>
		<div class="row">

			<div class="col-md-2"></div>

			<div class="col-md-8">
				<a href="/" class="btn btn-primary" role="button"> <span
					class="glyphicon glyphicon-home" aria-hidden="true"></span>
					Homepage
				</a> <br /> <br />
				<div class="panel panel-primary">
					<div class="panel-heading">Access Denied!</div>
					<div class="panel-body">${message}</div>
				</div>
			</div>

			<div class="col-md-2"></div>
		</div>
	</div>

</body>
</html>