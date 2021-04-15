<%--
  Created by IntelliJ IDEA.
  User: jeanette
  Date: 4/14/21
  Time: 5:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Home"/>
  </jsp:include>
  <link rel="stylesheet" href="css/style.css">
  <title></title>
</head>
<body>
<jsp:include page="partials/navBar.jsp">
  <jsp:param name="log" value="login"/>
</jsp:include>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Once Upon A Bottle</h1>
  </div>
</div>
</body>
</html>
