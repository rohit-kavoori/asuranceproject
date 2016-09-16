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
    }</style>
 
</head>
<body ng-app="components">
<div class="container-fluid" >
 
<%HttpSession sessiona = request.getSession(false); %>
<%if(sessiona != null) {%>
<% Customer customer = (Customer)session.getAttribute("customer"); %>
	
	 
				</button>
				<h2 style="color:white">Welcome <%=customer.getFirstName() %></h2>
			
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/Asurance/logout"><span class="glyphicon glyphicon-log-in"></span>
							Logout</a></li>
							
				</ul>
			</div>
	</nav>

	<div class="jumbotron">
		<div class="container text-center">
			<h1>My Profile</h1>
			<h3>
				<label>First Name:</label> <label><b><%=customer.getFirstName()%></b></label><br>
				<label>Last Name:</label> <label><b><%=customer.getLastName()%></b></label><br>
			</h3>
		</div>
	</div>
	<%} %>
    
<footer class="container-fluid  text-center">
  
  <div>     
     <div class="col-sm-4"> About us<br>
					<a href="#">Blog</a><br>
					<a href="#">Enterprise</a><br>
					<a href="#">Site status</a></div>
          
    
          
          
    <div class="col-sm-4">Application<br>
					<a href="#">Product for Mac</a><br>
        <a href="#">Product for Windows</a><br>
					<a href="#">Product mobile apps</a>							
				</div>
      
    <div class="col-sm-4">Others<br>
					<a href="#">Contact Us</a><br>
					<a href="#">Privacy & Security</a><br>
          <a href="#">Support</a></div></div>
    <div>&nbsp;</div>
<div class="footer-para">

    Auto insurance prices and products are different when purchased directly from Progressive or through agents/brokers. Auto quotes on this page are for policies purchased directly.

Not available in all states and situations.
In 2013, 84.57% of new customers surveyed nationally would recommend Progressive to a friend.

National average annual savings by new customers surveyed who saved with Progressive November 2012 - March 2013.Customer selected due dates are available only for auto insurance policies where the customer has elected to pay via EFT.Insurance carrier Web site ranking by Keynote® Systems, a leading independent Internet analyst.
    Copyright 1995 - 2016. Progressive Casualty Insurance Company. All Rights Reserved.</div>
   <div class="col-sm-12">
				<p >© 2013 Company Name. All rights reserved</p>
			</div> 
</footer>
</div>
 <script src="public/app/modules/modules.js"></script>
  <script src= "public/app/components/navbar-for-quote.js"></script>	 
</body>
</html>