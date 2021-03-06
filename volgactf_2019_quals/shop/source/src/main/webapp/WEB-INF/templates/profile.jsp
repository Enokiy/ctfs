<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Task</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.css" rel="stylesheet">
  <link href="/css/shop.css" rel="stylesheet">
  <link rel="icon" type="image/png" href="/img/favicon.png" sizes="96x96"/>

</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="/">Home
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/logout">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h2 class="my-4">Profile</h2>
        <c:if test="${user.name != null}">
          <h5 class="my-4">User name: <c:out value="${user.name}"/></h5>
        </c:if>
        <c:if test="${user.balance != null}">
          <h5 class="my-4">Balance: <c:out value="${user.balance}"/></h5>
        </c:if>

      </div>

      <div class="col-lg-9">

        <div class="row">

          <c:if test="${not empty cart}">
            <c:forEach var="product" items="#{cart}">
              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                  <img class="card-img-top" src="/img/<c:out value = "${product.id}"/>.jpg" alt="">
                  <div class="card-body">
                    <h4 class="card-title">
                      <c:out value = "${product.title}"/>
                    </h4>
                    <h5><fmt:formatNumber value="${product.price}" type="currency" currencySymbol="$" /></h5>
                  </div>
                  <div class="card-footer">
                    <c:out value = "${product.description}"/>
                  </div>
                </div>
              </div>
            </c:forEach>
          </c:if>

        </div>
      </div>
    </div>
  </div>

  <footer class="py-3 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">VolgaCTF 2019</p>
    </div>
  </footer>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

</body>

</html>
