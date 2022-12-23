<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
%>
<html>
<head>
<title>JSTL Tags</title>
</head>
<body>
<c:set var="money" scope="session" value="${8001}"/>
<c:if test="${money > 8000}">
<p>My Salary is: <c:out value="${money}"/><p>
</c:if>
</body>
</html>
