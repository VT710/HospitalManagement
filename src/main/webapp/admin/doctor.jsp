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

<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-5 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Doctor</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />

						</c:if>
						<c:if test="${not empty sucMsg}">
							<div class="fs-3 text-center text-warning">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label for="fullName" class="form-label">Full Name</label> <input
									type="text" class="form-control" required name="fullName"
									id="fullName">
							</div>
							<div class="mb-3">
								<label for="dob" class="form-label">DOB</label> <input
									type="date" class="form-control" required name="dob" id="dob">
							</div>
							<div class="mb-3">
								<label for="qualification" class="form-label">Qualification</label>
								<input type="text" class="form-control" required
									name="qualification" id="qualification">
							</div>

							<div class="mb-3">
								<label for="specialist" class="form-label">Specialist</label> <select
									type="text" class="form-control" required name="specialist"
									id="specialist">
									<option value="">---select---</option>

									<%
									SpecialistDao dao = new SpecialistDao(DBconnect.getConn());

									List<Specialist> list = dao.getAllSpecialist();

									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%>
										<%
										}
										%>
									
								</select>
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">Email</label> <input
									type="email" class="form-control" required name="email"
									id="email">
							</div>
							<div class="mb-3">
								<label for="mobno" class="form-label">Mob No</label> <input
									type="text" class="form-control" required name="mobno"
									id="mobno">
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" class="form-control" required name="password"
									id="password">
							</div>

							<button type="submit" class="btn btn-outline-warning col-md-12">Submit</button>
						</form>
					</div>
				</div>
			</div>


		</div>
	</div>
	<%@include file="../component/footer.jsp"%>
</body>
</html>