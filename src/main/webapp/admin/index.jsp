<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VT HOSPITAL</title>
<link href="../css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/ab91f51c07.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty adminobj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>
	<div class="admin-dashboard container">
		<h2 style="text-align: center">Admin Dashboard</h2>
		<c:if test="${not empty sucMsg}">
			<p class="sucMsg">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>

		<c:if test="${not empty errorMsg}">
			<p class="errMsg">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>

		<%
		DoctorDao dao = new DoctorDao(DBconnect.getConn());
		%>

		<div class="admin-card flex">
			<div class="a-card flex">
				<a href="view_doctor.jsp"><i class="fas fa-user-md fa-3x"></i></a>
				<h3>Doctors</h3>
				<p><%=dao.countDoctor()%></p>
			</div>
			<div class="a-card flex">
				<i class="fas fa-user-circle fa-3x"></i>
				<h3>Users</h3>
				<p><%=dao.countUser()%></p>
			</div>
			<div class="a-card flex">
				<a href="patient.jsp"><i class="far fa-calendar-check fa-3x"></i></a>
				<h3>Total Appointment</h3>
				<p><%=dao.countAppointment()%></p>
			</div>
			<div class="a-card flex">
				<i class="fa-regular fa-star fa-3x"></i>
				<h3>Specialists</h3>
				<p><%=dao.countSpecialist()%></p>
			</div>
		</div>
	</div>

	<div class="add-specialist-form">
		<div class="card-form flex">
			<div class="card-body">
				<div>
					<h3 class="text-spe">Add specialist</h3>
				</div>
				<div>
					<form action="../addSpecialist" method="post">
						<div class="specialist-add form-group">
							<label for="speName">Enter Specialist category</label> <input
								type="text" name="speName" class="form-control" id="speName" />
						</div>
						<div class="text-center mt-3">
							<button class="form-submit-button" type="submit">Add</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<%@include file="../component/footer.jsp"%>
</body>
</html>
