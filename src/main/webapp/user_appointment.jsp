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
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VT HOSPITAL</title>
<%@include file="component/allcss.jsp"%>

</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="appointment-space container">
		<div class="appointment ">
			<div class="appointment-body flex">
				<div class="appointment-image">
					<img alt="" src="images/doc1.jpg"  />
				</div>

				<div class="appointment-card card-body">
					<h2>Take Appointment</h2>
					<c:if test="${not empty errorMsg}">
						<p class="errMsg">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<c:if test="${not empty sucMsg}">
						<p class=" sucMsg">${sucMsg}</p>
						<c:remove var="sucMsg" scope="session" />
					</c:if>
					<form action="appAppointment" class="appointment-form-submit flex"
						method="post"
						id="form_main"
						
						>
						<input type="hidden" name="userid" value="${userObj.id}" />

						<div class="appointment-input">
							<label for="fullname" class="form-label">Full Name</label> <input
								 type="text" class="form-control" name="fullname"
								id="fullname" required/>
						</div>

						<div class="appointment-input">
							<label class="form-label" for="gender">Gender</label> <select
								class="form-control" name="gender" id="gender" required >
								<option value="male">Male</option>
								<option value="female">Female</option>
							</select>
						</div>

						<div class="appointment-input">
							<label for="age" class="form-label">Age</label> <input 
								type="number" class="form-control" name="age" id="age" required />
						</div>

						<div class="appointment-input">
							<label for="date" class="form-label">Appointment Date</label> <input
								type="date" class="form-control"  name="appoint_date"
								id="date" required />
						</div>

						<div class="appointment-input">
							<label for="email" class="form-label">Email</label> <input
								 type="email" class="form-control" name="email"
								id="email" required />
						</div>

						<div class="appointment-input">
							<label for="pno" class="form-label">Phone No</label> <input
								maxlength="10"  type="tel" class="form-control"
								name="phno" id="pno" required/>
						</div>

						<div class="appointment-input">
							<label for="diseas" class="form-label">Diseases</label> <input
								 type="text" class="form-control" name="diseases"
								id="diseas" required/>
						</div>

						<div class="appointment-input">
							<label for="doctor" class="form-label">Doctor</label> <select
								 class="form-control" name="doct" id="doctor" required>
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
							<label class="form-label appointment-address" for="address">Full
								Address</label>
							<textarea  name="address" class="form-control" required
								id="address"></textarea>
						</div>

						<c:if test="${empty userObj }">
							<a href="user_login.jsp" class="form-submit-button anchor-btn">Please Login First</a>
						</c:if>

						<c:if test="${not empty userObj }">
							<button type="submit" class="form-submit-button">Submit</button>
						</c:if>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- <script src="js/userAppointment.js"></script> -->
	<%@include file="component/footer.jsp"%>
</body>
</html>
