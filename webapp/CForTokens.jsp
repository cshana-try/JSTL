<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>JSTL Tags</title>
</head>
<body>
<c:forTokens items="My-Name-is-Nathi-Paramesh" delims="-" 
var="del">
Word: <c:out value="${del}" />
<p>
</c:forTokens>
</body>
</html>