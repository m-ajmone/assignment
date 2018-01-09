<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<body>

<form:form method = "POST" action = "/login">
	<span>${error}</span>
	<label for="username">Username</label>
    <input type="text" id="username" name="username"/>      
    <label for="password">Password</label>
    <input type="password" id="password" name="password"/>
   	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button type="submit">Log in</button>
</form:form>
<span>${logout}</span>

</body>

</html>