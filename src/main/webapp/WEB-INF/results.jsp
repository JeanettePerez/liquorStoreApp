
<%--
  Created by IntelliJ IDEA.
  User: jeanette
  Date: 4/9/21
  Time: 8:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Available Brands</h1>
<c:forEach var="brand" items="${brands}">
  <h1>${brand.brand}</h1>
</c:forEach>
</body>
</html>
