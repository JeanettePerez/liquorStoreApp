<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/profile">Wine Depot</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="/SelectLiquor">Inventory</a></li>
    </ul>
  </div>
  <form method="POST" action="/logout">
    <button type="submit">Logout</button>
  </form>
</nav>

