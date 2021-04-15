<%--<nav class="navbar navbar-default">--%>
<%--  <div class="container-fluid">--%>
<%--    <!-- Brand and toggle get grouped for better mobile display -->--%>
<%--    <div class="navbar-header">--%>
<%--      <a class="navbar-brand" href="${pageContext.request.contextPath}/profile">Once Upon A Bottle</a>--%>
<%--    </div>--%>
<%--    <ul class="nav navbar-nav navbar-right">--%>
<%--      <li><a href="${pageContext.request.contextPath}/SelectLiquor">Inventory</a></li>--%>
<%--    </ul>--%>
<%--  <form method="POST" action="${pageContext.request.contextPath}/logout">--%>
<%--    <button type="submit">${param.log}</button>--%>
<%--  </form>--%>
<%--  </div>--%>
<%--</nav>--%>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">Once Upon A Bottle</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Locations</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/SelectLiquor">Inventory</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>

    <form method="POST" action="${pageContext.request.contextPath}/logout">
      <button class="nav-link" type="submit">Logout</button>
    </form>
  </div>
</nav>
