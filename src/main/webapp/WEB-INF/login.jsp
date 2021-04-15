<%--
  Created by IntelliJ IDEA.
  User: jeanette
  Date: 4/14/21
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<jsp:include page="partials/head.jsp">
  <jsp:param name="title" value="login"/>
</jsp:include>
</head>
<body>
<jsp:include page="partials/navBar.jsp" />
<form method="POST" action="${pageContext.request.contextPath}/login">
  <fieldset class="container">
    <div>
      <label for="username">Username</label>
      <input id="username" type="text" name="username" placeholder="Enter Your Username">
    </div>
    <div>
      <label for="password">Password</label>
      <input id="password" type="password" name="password" placeholder="Enter Your Password">
    </div>
    <div>
      <button type="submit">Log In</button>
    </div>
  </fieldset>

</form>

</body>
</html>
