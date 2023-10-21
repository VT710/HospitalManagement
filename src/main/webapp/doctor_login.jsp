<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VT HOSPITAL</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>

<body>

	<%@include file="component/navbar.jsp"%>


	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4 ">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Doctor Login</p>

						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />

						</c:if>
						<c:if test="${not empty sucMsg}">
							<div class="fs-3 text-center text-warning">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<form action="doctorLogin" method="post">
							<div class="mb-3">
								<div>
									<label for="email" class="form-label">Email adress</label> <input
										id="email" type="email" name="email" class="form-control"
										required>
								</div>
							</div>
							<div class="mb-3">
								<div>
									<label for="password" class="form-label">Password</label> <input
										id="password" type="password" name="password"
										class="form-control" required>
								</div>
							</div>
							<button type="submit"
								class="btn btn-outline-warning  text-dark col-md-12">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@include file="component/footer.jsp"%>
</body>

</html>