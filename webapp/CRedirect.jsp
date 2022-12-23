<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>JSTL Tags</title>
</head>
<body>
<c:set var="urlName" value="2" scope="request"/>
<c:if test="${urlName<1}">
<c:redirect url="http:/educba.com"/>
</c:if>
<!-- Page directly redirect to gmail because value is greater
than 1 -->
<c:if test="${urlName>1}">
<c:redirect url="http://gmail.com"/>
</c:if>
</body>
</html>
