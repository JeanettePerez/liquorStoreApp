<%--
  Created by IntelliJ IDEA.
  User: jeanette
  Date: 4/14/21
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Welcome"/>
  </jsp:include>
</head>
<body>
<jsp:include page="partials/profileNav.jsp">
  <jsp:param name="log" value="logout"/>
</jsp:include>

</body>
</html>
