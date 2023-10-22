<%@page import="com.entity.Specialist"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DBconnect"%>
<%@ page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VT HOSPITAL</title>

<link href="../css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/ab91f51c07.js"
	crossorigin="anonymous"></script>
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<c:if test="${not empty errorMsg}">
				<p class="errMsg">${errorMsg}</p>
				<c:remove var="errorMsg" scope="session" />

			</c:if>
			<c:if test="${not empty sucMsg}">
				<div class="sucMsg">${sucMsg}</div>
				<c:remove var="sucMsg" scope="session" />
			</c:if>


			<div class="card paint-card">
				<div class="">
					<div class="patient-details-table">
						<h2>Doctor Details</h2>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Full Name</th>
								<th scope="col">DOB</th>
								<th scope="col">Qualification</th>
								<th scope="col">Specialist</th>
								<th scope="col">Email</th>
								<th scope="col">Mob No</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<element>
						<tbody>
							<%
							DoctorDao dao2 = new DoctorDao(DBconnect.getConn());
							List<Doctor> list2 = dao2.getAllDoctor();
							for (Doctor d : list2) {
							%>
							<tr>
								<td><%=d.getFullName()%></td>
								<td><%=d.getDob()%></td>
								<td><%=d.getQualification()%></td>
								<td><%=d.getSpecialist()%></td>
								<td><%=d.getEmail()%></td>
								<td><%=d.getMobNo()%></td>
								<td><a href="edit_doctor.jsp?id=<%=d.getId()%>"
									class="btn btn-sm btn-warning"> Edit </a> <a
									href="../deleteDoctor?id=<%=d.getId()%>"
									class="btn btn-sm btn-danger"> Delete </a></td>
							</tr>
							<%
							}
							%>

						</tbody>
						</element>
					</table>
				</div>
			</div>

		</div>
	</div>
	<%@include file="../component/footer.jsp"%>
</body>
</html>