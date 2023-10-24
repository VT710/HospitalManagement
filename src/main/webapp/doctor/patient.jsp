<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VT HOSPITAL</title>
<link href="../css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/ab91f51c07.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<%
							Doctor d1 = (Doctor) session.getAttribute("doctObj"); %>
							


	<%@include file="navbar.jsp"%>
	<div class="container d-patient">
		<div class="row">

			<div class="col-md-12">
			<h2 style="text-align: center; color: blue;">Welcome Doctor<span style="color: red"> <%=d1.getFullName().toUpperCase() %></span></h2>
				<div class="patient-details-table">

					<h2 >Patient Details</h2>
					<c:if test="${not empty errorMsg}">
						<p class="errMsgr">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<c:if test="${not empty sucMsg}">
						<p class="sucMsg">${sucMsg}</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>

					<table class="table">
						<thead>
							<tr>
								<th scope="col">Full Name</th>
								<th scope="col">Gender</th>
								<th scope="col">Age</th>
								<th scope="col">Appointment Date</th>
								<th scope="col">Email</th>
								<th scope="col">Mob No</th>
								<th scope="col">Diseases</th>
								<th scope="col">Status</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<%
							Doctor d = (Doctor) session.getAttribute("doctObj");
							AppointmentDao dao = new AppointmentDao(DBconnect.getConn());
							List<Appointment> list = dao.getAllAppointmentByDoctorLogin(d.getId());
							for (Appointment ap : list) {
							%>
							<tr>
								<th><%=ap.getFullName()%></th>
								<td><%=ap.getGender()%></td>
								<td><%=ap.getAge()%></td>
								<td><%=ap.getAppoinDate()%></td>
								<td><%=ap.getEmail()%></td>
								<td><%=ap.getPhNo()%></td>
								<td><%=ap.getDiseases()%></td>
								<td><%=ap.getStatus()%></td>
								<td>
									<%
									if ("Pending".equals(ap.getStatus())) {
									%> <a href="comment.jsp?id=<%=ap.getId()%>"
									class="comment-btn">Comment</a> <%
 } else {
 %> <a href="#" class="comment-btn-disabled disabled">Done<i class="fa-solid fa-check"></i></a>
									<%
									}
									%>
								</td>
							</tr>
							<%
							}
							%>



						</tbody>
					</table>


				</div>
			</div>

		</div>
	</div>

	<%@include file="../component/footer.jsp"%>

</body>
</html>