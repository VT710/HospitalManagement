<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@page isELIgnored="false"%>
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

    <c:if test="${ empty userObj }">
      <c:redirect url="user_login.jsp"></c:redirect>
    </c:if>

    <div class="change-info container flex">
      <div class="change-height">
        <div class="card-body change-body">
          <h2>Change Password</h2>
          <c:if test="${not empty sucMsg }">
            <p>${sucMsg}</p>
            <c:remove var="succMsg" scope="session" />
          </c:if>

          <c:if test="${not empty errorMsg }">
            <p>${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
          </c:if>
          <div class="">
            <form action="userChangePassword" method="post">
              <div class="mb-3">
                <label>Enter New Password</label>
                <input
                  type="text"
                  name="newPassword"
                  class="form-control"
                  required
                />
              </div>

              <div class="mb-3">
                <label>Enter Old Password</label>
                <input
                  type="text"
                  name="oldPassword"
                  class="form-control"
                  required
                />
              </div>
              <input type="hidden" value="${userObj.id }" name="uid" />
              <button class="form-submit-button">Change Password</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <%@include file="component/footer.jsp"%>
  </body>
</html>
