<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>VT HOSPITAL</title>
    <%@include file="component/allcss.jsp"%>
   
  </head>
  <body>
    <c:if test="${empty userObj }">
      <c:redirect url="user_login.jsp"></c:redirect>
    </c:if>
    <%@include file="component/navbar.jsp"%>

    <div class="appointment-heading container">
      <h2>Appointment List</h2>
      <div class="appointment-card">
        <table class="table">
          <thead>
            <tr>
              <th>Full Name</th>
              <th>Gender</th>
              <th>Age</th>
              <th>Appoint Date</th>
              <th>Diseases</th>
              <th>Doctor Name</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
            <%
                          User user = (User) session.getAttribute("userObj");
                          AppointmentDao dao = new AppointmentDao(DBconnect.getConn());
                          DoctorDao dao2 = new DoctorDao(DBconnect.getConn());
                          List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
                          for (Appointment ap : list) {
                              Doctor d = dao2.getDoctorById(ap.getDoctorId());
                          %>
            <tr>
              <th><%=ap.getFullName()%></th>
                              <td><%=ap.getGender()%></td>
                              <td><%=ap.getAge()%></td>
                              <td><%=ap.getAppoinDate()%></td>
                              <td><%=ap.getDiseases()%></td>
                              <td><%=d.getFullName()%></td>
              <td>
                <%
                                  if ("Pending".equals(ap.getStatus())) {
                                  %> <a href="#" class="btn btn-sm btn-primary">Pending</a> <%
} else {
%> <%=ap.getStatus()%> <%
}
%>
              </td>
            </tr>
            <%
                          }
                          %>
          </tbody>
        </table>

      <!-- <div class="col-md-3">
          <img
            alt=""
            src="images/doc.jpg"
            style="width: 250px; height: 300px"
          />
        </div> -->
      </div>
    </div>

    <%@include file="component/footer.jsp"%>
  </body>
</html>
