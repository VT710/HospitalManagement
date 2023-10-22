<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>VT HOSPITAL</title>
    <%@include file="component/allcss.jsp"%>
  </head>
  <body>
    <%@include file="component/navbar.jsp"%>

    <div class="user-login-css container flex">
      <div class="user-login-body">
        <div class="card-body card-body-login">
          <h2>User Login</h2>

          <c:if test="${not empty sucMsg}">
            <p class="sucMsg">${sucMsg}</p>
            <c:remove var="sucMsg" scope="session" />
          </c:if>

          <c:if test="${not empty errorMsg}">
            <p class="errMsg">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
          </c:if>

          <form action="userLogin" method="post">
            <div class="mb-3">
              <div>
                <label for="email" class="form-label">Email adress</label>
                <input
                  id="email"
                  type="email"
                  name="email"
                  class="form-control"
                  required
                />
              </div>
            </div>
            <div class="mb-3">
              <div>
                <label for="password" class="form-label">Password</label>
                <input
                  id="password"
                  type="password"
                  name="password"
                  class="form-control"
                  required
                />
              </div>
            </div>
            <button type="submit" class="form-submit-button">Login</button>
          </form>
          <div class="create-one-login">
            Don't have an account?
            <a href="signup.jsp" class="create-one">
              create one <i class="fa-solid fa-user"></i
            ></a>
          </div>
        </div>
      </div>
    </div>

     <%@include file="component/footer.jsp"%> 
  </body>
</html>
