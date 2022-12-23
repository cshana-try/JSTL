<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>1 to 5</title>
</head>
<body>

<c:set var="digit" value="${2}"/>
<p>Your number is : <c:out value="${digit}"/></p>

<c:choose>

<c:when test="${digit==1}">
<c:out value="${digit} is ONE"></c:out>
</c:when>

<c:when test="${digit==2}">
<c:out value="${digit} is TWO"></c:out>
</c:when>

<c:when test="${digit==3}">
<c:out value="${digit} is THREE"></c:out>
</c:when>

<c:when test="${digit==4}">
<c:out value="${digit} is FOUR"></c:out>
</c:when>

<c:when test="${digit==5}">
<c:out value="${digit} is FIVE"></c:out>
</c:when>

<c:otherwise>
Out of range. Please enter number between 1 to 5.
</c:otherwise>

</c:choose>

</body>
</html>