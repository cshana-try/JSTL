<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
prefix="fn"%>
<html>
<head>
<title>JSTL Tags</title>
</head>
<body>
<c:set var="StringType"
value="We are learning online course from EDUCBA platform" />
<c:if test="${fn:contains(StringType, 'EDUCBA')}">
<h1 style="color: green">Yes Given String found in the value
</h1>
<p style="color:blue;border: 1px solid red;font-size:20px">JSTL
abbreviated as Java Standard Tag Library. Which is
further extension for JSP (Java Server Pages). JSTL reduced the
lines of code for developer. This JSTL supports for structural tasks,
common task like conditional and iteration. This tags used for
changing I18N (Internationalization) tags, SQL tags, XML
documents
etc. This JSTL also provides a framework for attaching the
already
existing custom tags within the Java Standard Tag Library.</p>
</c:if>
<c:if test="${fn:contains(StringType, 'courses')}">
<p>No Given String is not found in the value
<p>
</c:if>
</body>
</html>