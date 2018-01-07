<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>Registration</title>
</head>
<body>

<form:form action = "/registration" modelAttribute = "user" method = "POST">

<form:input path="username"/> Username <br/>
<form:input path="password"/> Password <br/>
<form:input path="email"/> Email <br/>
<form:input path="country"/> Country <br/>
<form:input path="city"/> City <br/>
<button type = "submit">Register</button>
</form:form>

</body>
</html>