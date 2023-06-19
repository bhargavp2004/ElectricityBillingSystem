<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ELECTRICITY BILLING SYSTEM | HOME </title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/devicons/devicon@v2.15.1/devicon.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Candal&family=Montserrat:wght@400;500&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="/css/style.css">
  <style>
    .social-links {
      margin-top: 20px;
    }

    .social-links a {
      color: white;
      margin-right: 10px;
      font-size: 20px;
    }
  </style>
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const navLinks = document.querySelectorAll(".nav-link");

      navLinks.forEach(function (navLink) {
        navLink.addEventListener("click", function () {
          const navbarToggler = document.querySelector(".navbar-toggler");
          const navbarCollapse = document.querySelector(".navbar-collapse");

          if (navbarToggler.classList.contains("collapsed") && !navbarCollapse.classList.contains("show")) {
            // Do nothing if the toggler is already collapsed and the collapse content is not shown
            return;
          }

          if (navbarCollapse.classList.contains("show")) {
            navbarToggler.classList.add("collapsed");
            navbarCollapse.classList.remove("show");
          } else {
            navbarToggler.classList.remove("collapsed");
            navbarCollapse.classList.add("show");
          }
        });
      });
    });
  </script>
</head>

<body>
  <!-- Horizontal Navigation bar for page routing -->

  <nav class="navbar navbar-expand-lg fixed-top navbar-dark" style="background-color: blue; color : white">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Electricity Billing System</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <c:if
					test="${sessionScope.username != null and sessionScope.type != null}">

					<ul class="navbar-nav">
						<li class="nav-item"><a href="<%=request.getContextPath()%>/"
								class="nav-link">HOME</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath()%>/addMeterData"
								class="nav-link">ADD METER DATA</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath()%>/logout"
								class="nav-link">LOGOUT</a></li>
					</ul>
	
				</c:if>
                <c:if
					test="${sessionScope.username == null and sessionScope.type == null}">
	
					<ul class="navbar-nav">
						<li class="nav-item"><a href="<%=request.getContextPath()%>/"
								class="nav-link">HOME</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath()%>/addCustomer"
								class="nav-link">REGISTER AS CUSTOMER</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath()%>/login"
								class="nav-link">LOGIN AS CUSTOMER</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath()%>/loginReader"
								class="nav-link">LOGIN AS READER</a></li>
					</ul>
				</c:if>
                <c:if
					test="${sessionScope.username != null and sessionScope.type == null}">

					<ul class="navbar-nav">
						<li class="nav-item"><a href="<%=request.getContextPath()%>/"
								class="nav-link">HOME</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath()%>/addMeter"
								class="nav-link">REGISTER A METER</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath()%>/logout"
								class="nav-link">LOGOUT</a></li>
					</ul>
				</c:if>
      </div>
    </div>
  </nav>
  
    <div class="container-fluid d-flex align-items-center justify-content-center" style="height: 100vh;">
    <div>
      <h1 class="text-center mb-4">Made Easier For You</h1>
      <p class="text-center mb-4">Experience hassle-free and efficient electricity billing with our reliable and user-friendly system</p>

      <c:if test="${sessionScope.username != null and sessionScope.type == null}">
        <div class="text-center">
          <a class="pay_now btn btn-primary btn-lg" href="<%=request.getContextPath()%>/pay">PAY BILL</a>
        </div>
      </c:if>

      <c:if test="${sessionScope.username == null}">
        <div class="text-center">
          <a class="pay_now btn btn-primary btn-lg" href="<%=request.getContextPath()%>/login">PAY BILL</a>
        </div>
      </c:if>
    </div>
  
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pzj9p1F2lCj9kgt6UkRAfIEQ+hTolviKxKqR6FcAib4Jk3D60ADK3cv0S+2D88xy"
    crossorigin="anonymous"></script>
</body>

</html>