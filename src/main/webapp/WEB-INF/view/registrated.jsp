<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Registration</title>
</head>
<body>

<c:forEach items="${userList}" var="user">
    <p>${user.username}</p>
</c:forEach>

</body>

</html>

