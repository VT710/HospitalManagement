<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<nav class="navbar">
      <div class="container navbar-expand flex">
        <a href="index.jsp"
          ><i class="fas fa-clinic-medical fs-1"> </i>
          <span class="logo">VT </span>HOSPITAL</a
        >
        <div class="nav-links">
          <div class="collapse" id="collapse-id">
            <ul class="navbar-nav flex">
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">HOME</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="patient.jsp">PATIENT</a>
              </li>

              <li class="nav-item"></li>
              <li class="nav-item">
                <a href="#"
                  ><button class="logout-btn">
                    <i class="fa-solid fa-circle-user"></i>${doctObj.fullName.toUpperCase() }
                  </button></a
                >
                <ul class="dropdown-menu">
                  <li>
                    <a href="edit_profile.jsp">Edit Profile</a>
                  </li>
                  <li>
                    <a href="../doctorLogout">Logout</a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>