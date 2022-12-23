<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>JSTL Tags</title>
</head>
<body>
<c:set var="money" scope="session" value="${5000}"/>
<p>Your income is : $<c:out value="${money}"/></p>
<c:choose>
<c:when test="${money <= 1000 && money >= 500}">
You are paid with low salary.
</c:when>
<c:when test="${money > 10000}">
You are paid with really good salary.
</c:when>
<c:otherwise>
You are paid with good salary .
</c:otherwise>
</c:choose>
</body>
</html>