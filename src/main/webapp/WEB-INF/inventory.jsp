<%--
  Created by IntelliJ IDEA.
  User: jeanette
  Date: 4/14/21
  Time: 5:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Inventory"/>
  </jsp:include>
</head>
<body>
<jsp:include page="partials/profileNav.jsp" />

<h1>
  Select the type of Liquor
</h1>

<form method="post" action="/SelectLiquor">
  <br>
  <select name="Type" size="1">
    <option>WINE</option>
    <option>WHISKEY</option>
    <option>BEER</option>
  </select>
  <br><br>
  <input type="submit">
</form>

</body>
</html>
