<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.ekthasol.asurance.models.Customer" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="public/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="public/bower_components/bootstrap/dist/css/bootstrap-theme.min.css">
    <link href="public/css/footer.css" rel="stylesheet">
     <script src="public/bower_components/jquery/dist/jquery.min.js"></script>
<!-- <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
	<script src="public/bower_components/angular/angular.js"></script>
<title>Customer Details</title>
<style>

div.footer-para{
          text-align: justify;
          margin:20px 150px 20px 150px;
      }
footer{
      position: fixed;
      bottom: 0;
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    .navbar-inverse {
   /*  background-image: linear-gradient(to bottom,#3c3c3c 0,#f5f5f5 100%); */
    }
    .navbar-header ul li {
    font-size: 30px;
    }
    </style>
 
</head>
<body ng-app="components">
<div class="container-fluid" >
 
<%HttpSession sessiona = request.getSession(false); %>
<%if(sessiona != null) {%>
<% Customer customer = (Customer)session.getAttribute("customer"); %>

	<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
      <ul class="nav navbar-nav ">
     <li><a  href="/Asurance"><custom-logo></custom-logo></a></li>
      <li style="margin-left: 330px; font-size:30px; margin-top:20px;"><span style="color:black">Welcome <%=customer.getFirstName()%></span></li>
      </ul>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    
      <ul class="nav navbar-nav navbar-right">
        <li style=" font-size:15px; margin-top:20px;"><a href="/Asurance/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

	<div class="container " style="
    margin-top: 70px;">
	<div class="row">
		<div class="col-sm-12">
			<h1 style="color:blue">My Profile</h1>
			<h3>
				<label>First Name:</label> <label><b><%=customer.getFirstName()%></b></label><br>
				<label>Last Name:</label> <label><b><%=customer.getLastName()%></b></label><br>
			</h3>
		</div>
	</div>
	<%} %>
<div custom-footer></div>
</div>
 <script src="public/app/modules/modules.js"></script>
 <script src= "public/app/components/footer.js"></script>
 <script src= "public/app/components/customLogo.js"></script>	 
</body>
</html>