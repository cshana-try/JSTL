<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>JSTL Tags</title>
</head>
<body>
<c:forEach var="iterator" begin="100" end="110">
Count: <c:out value="${iterator}" />
<p>
</c:forEach>
</body>
</html>