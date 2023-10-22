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
  <script
      src="https://kit.fontawesome.com/ab91f51c07.js"
      crossorigin="anonymous"
    ></script>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container ">
		<div class="admin-doctor flex">
			
				
					<div class=" d-width card-body">
						<h2>Add Doctor</h2>
						<c:if test="${not empty errorMsg}">
							<p class="errMsg">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />

						</c:if>
						<c:if test="${not empty sucMsg}">
							<div class="sucMsg">${sucMsg}</div>
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
									type="tel" class="form-control" required name="mobno"
									id="mobno" maxlength="10">
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" class="form-control" required name="password"
									id="password">
							</div>

							<button type="submit" class="form-submit-button">Submit</button>
						</form>
					</div>
				
			


		</div>
	</div>
	<%@include file="../component/footer.jsp"%>
</body>
</html>