<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<%@include file="../component/allcss.jsp"%>


<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fas fa-clinic-medical fs-1 text-danger"> </i> <span
			class="fs-2 fw-bold text-dark">VT </span>HOSPITAL</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link active"
					href="index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link" href="doctor.jsp">ADD
						DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link" href="view_doctor.jsp">VIEW
						DOCTORS</a></li>
				<li class="nav-item"><a class="nav-link" href="patient.jsp">PATIENT</a></li>
			</ul>


			<form action="" class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">ADMIN</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a href="../adminLogout" class="dropdown-item">LOGOUT</a></li>

					</ul>
				</div>

			</form>

		</div>
	</div>
</nav>
