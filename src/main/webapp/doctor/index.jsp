<%@page import="com.entity.Doctor"%> <%@page import="com.db.DBconnect"%> <%@page
import="com.dao.DoctorDao"%> <%@ page language="java" contentType="text/html;
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VT HOSPITAL</title>
    <link href="../css/style.css" rel="stylesheet" />
    <script
      src="https://kit.fontawesome.com/ab91f51c07.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <c:if test="${empty doctObj }">
      <c:redirect url="../doctor_login.jsp"></c:redirect>
    </c:if>

    <%@include file="navbar.jsp"%>
    <div class="admin-dashboard container">
      <h1>Doctor Dashboard</h1>

      <% Doctor d = (Doctor) session.getAttribute("doctObj"); DoctorDao dao =
      new DoctorDao(DBconnect.getConn()); %>
      <div class="container p-5">
        <div class="row">
          <div class="col-md-4 offset-md-2">
            <div class="card paint-card">
              <div class="card-body text-center text-warning">
                <i class="fas fa-user-md fa-3x"></i><br />
                <p class="fs-4 text-center">
                  Doctor<br />
                  <%=dao.countDoctor()%>
                </p>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="card paint-card">
              <div class="card-body text-center text-warning">
                <i class="far fa-calendar-check fa-3x"></i><br />
                <p class="fs-4 text-center">
                  Total Appointment <br />
                  <%=dao.countAppointmentByDocotrId(d.getId())%>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <%@include file="../component/footer.jsp"%>
  </body>
</html>
