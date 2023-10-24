<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDao"%>
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
	<%@include file="navbar.jsp"%>

	<div class="comment container">
		<div class="row">

			<div class="doctor-login container flex">
				<div class="doctor-login-body">
					<div class="card-body card-body-doctor">
						<h2>Patient Analysis Comment</h2>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						AppointmentDao dao = new AppointmentDao(DBconnect.getConn());

						Appointment ap = dao.getAppointmentById(id);
						%>
						<form action="../updateStatus" method="post">
							<div class="col-md-6">
								<label class="form-label">Patient Name</label> <input type="text" readonly
									value="<%=ap.getFullName()%>" class="form-control">
							</div>

							<div >
								<label class="form-label">Age</label> <input type="text" value="<%=ap.getAge()%>"
									readonly class="form-control">
							</div>


							<div >
								<br> <label class="form-label">Mob No</label> <input type="text" readonly
									value="<%=ap.getPhNo()%>" class="form-control">
							</div>

							<div >
								<br> <label class="form-label">Diseases</label> <input type="text" readonly
									value="<%=ap.getDiseases()%>" class="form-control">
							</div>

							<div >
								<br> <label class="form-label">Comment</label>
								<textarea required name="comm" class="form-control" 
									></textarea>
							</div>

							<input type="hidden" name="id" value="<%=ap.getId()%>"> <input
								type="hidden" name="did" value="<%=ap.getDoctorId()%>">

							<button
								class="form-submit-button">Submit</button>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>




	<%@include file="../component/footer.jsp"%>

</body>
</html>