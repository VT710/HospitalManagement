<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>VT HOSPITAL</title>
    <%@include file="component/allcss.jsp"%>
  
  </head>
  <body>
    <%@include file="component/navbar.jsp"%>
    <div class="appointment container">
      <div class="appointment-body flex">
        <div class="appointment-image">
          <img alt="" src="images/doc1.jpg" width="400px" height="500px" />
        </div>

        <div class="appointment-card card-body">
          <h2>Take Appointment</h2>
          <c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg}">
							<p class=" fs-4 text-center text-warning">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
          <form
            action="appAppointment"
            class="appointment-form-submit flex"
            method="post"
          >
            <input type="hidden" name="userid" value="${userObj.id}" />

            <div class="appointment-input">
              <label for="fullname" class="form-label">Full Name</label>
              <input
                required
                type="text"
                class="form-control"
                name="fullname"
                id="fullname"
              />
            </div>

            <div class="appointment-input">
              <label class="form-label" for="gender">Gender</label>
              <select class="form-control" name="gender" id="gender" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
              </select>
            </div>

            <div class="appointment-input">
              <label for="age" class="form-label">Age</label>
              <input
                required
                type="number"
                class="form-control"
                name="age"
                id="age"
              />
            </div>

            <div class="appointment-input">
              <label for="date" class="form-label">Appointment Date</label>
              <input
                type="date"
                class="form-control"
                required
                name="appoint_date"
                id="date"
              />
            </div>

            <div class="appointment-input">
              <label for="email" class="form-label">Email</label>
              <input
                required
                type="email"
                class="form-control"
                name="email"
                id="email"
              />
            </div>

            <div class="appointment-input">
              <label for="pno" class="form-label">Phone No</label>
              <input
                maxlength="10"
                required
                type="tel"
                class="form-control"
                name="phno"
                id="pno"
              />
            </div>

            <div class="appointment-input">
              <label for="diseas" class="form-label">Diseases</label>
              <input
                required
                type="text"
                class="form-control"
                name="diseases"
                id="diseas"
              />
            </div>

            <div class="appointment-input">
              <label for="doctor" class="form-label">Doctor</label>
              <select required class="form-control" name="doct" id="doctor">
                <option value="">--select--</option>

                <%
									DoctorDao dao = new DoctorDao(DBconnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)
									</option>
									<%
									}
									%>
              </select>
            </div>

            <div class="appointment-input app-textarea">
              <label class="form-label appointment-address" for="address"
                >Full Address</label
              >
              <textarea
                required
                name="address"
                class="form-control"
                id="address"
              ></textarea>
            </div>

            <c:if test="${empty userObj }">
								<a href="user_login.jsp"
									class="form-submit-button anchor-btn">Submit</a>
							</c:if>

            <c:if test="${not empty userObj }">
            <button class="form-submit-button">Submit</button>
            </c:if>
          </form>
        </div>
      </div>
    </div>
    <%@include file="component/footer.jsp"%>
  </body>
</html>
