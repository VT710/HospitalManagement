
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VT HOSPITAL</title>

<%@include file="component/allcss.jsp"%>

</head>
<body>
<%@include file="component/navbar.jsp"%>

 <div class="hero-section flex">
      <div class="header-text">
        <h1 class="header-text-text">
          .....WELCOME TO
          <span class="header-color">VIKAS</span> HOSPITAL.....
        </h1>
      </div>
    </div>
    <!-- Carousel Start -->
    <div class="carousel flex">
      <div class="imgSlider"></div>
      <div class="carousal-text">
        <h2>Friendly Doctor</h2>
        <p>---best hospital in our city---</p>
      </div>
    </div>
    <!-- Carousel End -->

    <!-- key features start -->
    <div class="key-feature-section container">
      <h2>Key Features of our Hospital</h2>
      <div class="key-main-div flex">
        <div class="key-points flex">
          <div class="key-point">
            <h3>Clean Environment</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo
              rerum sed sint quas aliquid odit sequi dolor, obcaecati repellat
              voluptatibus?
            </p>
          </div>
          <div class="key-point">
            <h3>Clean Environment</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo
              rerum sed sint quas aliquid odit sequi dolor, obcaecati repellat
              voluptatibus?
            </p>
          </div>
          <div class="key-point">
            <h3>Clean Environment</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo
              rerum sed sint quas aliquid odit sequi dolor, obcaecati repellat
              voluptatibus?
            </p>
          </div>
          <div class="key-point">
            <h3>Clean Environment</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo
              rerum sed sint quas aliquid odit sequi dolor, obcaecati repellat
              voluptatibus?
            </p>
          </div>
        </div>
        <div class="side-image">
          <img src="images/doc.jpg" alt="" />
        </div>
      </div>
    </div>

    <!-- key features start -->

    <!-- our team start -->

    <div class="main-card-section container">
      <h2>....Our Team....</h2>
      <div class="card-section flex">
        <div class="card-body">
          <div class="card-image">
            <img src="images/doc2.jpg" alt="" />
          </div>
          <div class="card-text">
            <h3>Ravi Panchal</h3>
            <p>(CEO & Chairman)</p>
          </div>
        </div>

        <div class="card-body">
          <div class="card-image">
            <img src="images/doc1.jpg" alt="" />
          </div>
          <div class="card-text">
            <h3>Dr.Kumar</h3>
            <p>(Chief Doctor)</p>
          </div>
        </div>

        <div class="card-body">
          <div class="card-image">
            <img src="images/doc3.jpg" alt="" />
          </div>
          <div class="card-text">
            <h3>Dr.Shiva Kumar</h3>
            <p>(Chief Doctor)</p>
          </div>
        </div>

        <div class="card-body">
          <div class="card-image">
            <img src="images/doc.jpg" alt="" />
          </div>
          <div class="card-text">
            <h3>Dr.Sanaya</h3>
            <p>(Chief Doctor)</p>
          </div>
        </div>

        <!-- our team ends -->
      </div>
    </div>
 <%@include file="component/footer.jsp" %>
</body>
</html>
