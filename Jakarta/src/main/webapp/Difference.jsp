<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Difference</title>
</head>
<body>
<c:set var="num1" value="${50}"/>
<c:set var="num2" value="${210}"/>

<c:choose>
<c:when test="${num1 > num2}">
The difference is <c:out value="${num1 - num2}"></c:out> 
</c:when>

<c:when test="${num1 < num2}">
The difference is <c:out value="${num2 - num1}"></c:out>
</c:when>

<c:otherwise>
There is no difference. 
</c:otherwise>

</c:choose> 

</body>
</html>