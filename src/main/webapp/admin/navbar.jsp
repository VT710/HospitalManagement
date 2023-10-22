<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


 <nav class="navbar">
      <div class="container navbar-expand flex">
        <a href="index.jsp"
          ><i class="fas fa-clinic-medical fs-1 text-danger"> </i>
          <span class="fs-2 fw-bold text-dark">VT </span>HOSPITAL</a
        >
        <div class="nav-links">
          <div class="collapse" id="collapse-id">
            <ul class="navbar-nav flex">
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">HOME</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="doctor.jsp">ADD DOCTOR</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="view_doctor.jsp">VIEW DOCTORS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="patient.jsp">PATIENT</a>
              </li>

              <li class="nav-item">
                <a href="#"
                  ><button class="logout-btn">
                    <i class="fa-solid fa-circle-user"></i>ADMIN
                  </button></a
                >
                <ul class="dropdown-menu">
                  <li>
                    <a href="../adminLogout" class="dropdown-item">LOGOUT</a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>