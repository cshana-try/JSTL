<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>JSTL Tags</title>
</head>
<body>
<c:set value="214" var="digit"></c:set>
<c:choose>
<c:when test="${digit%2==0}">
<c:out value="${digit} is EVEN digit"></c:out>
</c:when>
<c:otherwise>
<c:out value="${digit} is ODD digit"></c:out>
</c:otherwise>
</c:choose>
</body>
</html>