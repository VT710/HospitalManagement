

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VT HOSPITAL</title>
<%@include file="allcss.jsp"%>

</head>
  <body>
    <nav class="navbar">
      <div class="container navbar-expand flex">
        <a href="index.jsp"
          ><i class="fas fa-clinic-medical fs-1"> </i>
          <span class="logo">VT </span>HOSPITAL</a
        >

        <div class="nav-links">
          <div class="collapse" id="collapse-id">
            <ul class="navbar-nav flex">
              <c:if test="${empty userObj }">
              <li class="nav-item">
                <a
                  class="nav-link active"
                  aria-current="page"
                  href="admin_login.jsp"
                  ><i class="fa-solid fa-right-to-bracket"></i> ADMIN</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="doctor_login.jsp">DOCTOR</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="user_appointment.jsp"
                  >APPOINTMENT</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="user_login.jsp">USER</a>
              </li>
              </c:if>
              <c:if test="${not empty userObj }">
              <li class="nav-item">
                <a class="nav-link active" href="user_appointment.jsp"
                  >APPOINTMENT</a
                >
              </li>

              <li class="nav-item">
                <a href="#"
                  ><button class="user-display logout-btn">
                    <i class="fa-solid fa-circle-user"></i>${userObj.fullName.toUpperCase()}
                  </button></a
                >
                <ul class="dropdown-menu">
                  <li>
                    <a class="nav-link active" href="view_appointment.jsp"
                      >VIEW APPOINTMENT</a
                    >
                  </li>
                  <li>
                    <a href="change_password.jsp">CHANGE PASSWORD</a>
                  </li>
                  <li>
                    <a href="userLogout">LOGOUT</a>
                  </li>
                </ul>

                </c:if>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
  </body>
</html>