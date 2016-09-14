<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import=" com.ekthasol.asurance.models.Vehicle" %>
	<%@ page import="java.util.List" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html ng-app="components">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link rel="stylesheet" href="public/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="public/bower_components/bootstrap/dist/css/bootstrap-theme.min.css">
     <script src="public/bower_components/jquery/dist/jquery.min.js"></script> -->

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="../../bower_components/angular/angular.js"></script>
<title>Vehicle</title>
<style>
li { cursor: pointer; cursor: hand; }
</style>
</head>
<body>
<div navbar-header></div>

	<div class="container-fluid text-center" style="
    margin-top: 70px;">
		<div class="row">
			<div class="col-sm-12">
				<h2 style="color: orange">Add vehicles to your quote.</h2>
				<p>Based on your address, we found the following car:</p>
			</div>
		</div>
		<hr class="colorgraph">
		<% List<Vehicle> vehicleList = (List<Vehicle>)session.getAttribute("vehicles"); %>
    	<c:forEach items="${vehicleList}" var="vehicleList">
		<div class="row">
			<div class="col-sm-6">
				<span id="selected" class="glyphicon glyphicon-ok"></span><p>${vehicleList.getYear() }
				<p>
				<p>${vehicleList.getMake() }
					${vehicleList.getModel() }</p>
			</div>
			<div class="col-sm-6">
				<button type="button" class="btn btn-lg btn-default" id="btn1">
					<span class="glyphicon glyphicon-plus"></span>Add to quote

				</button>
				<button type="button" class="btn btn-lg btn-default" id="btn2">
					<span class="glyphicon glyphicon-minus"></span>Remove

				</button>

			</div>
		</div>
		</c:forEach>
		<div class="row">
		<div class="col-sm-12" id="noVehicle"><p>At least one vehicle should be added!</p></div>
		</div>
		<hr class="colorgraph">
		<div class="row">
			<div class="col-sm-6">
				<button class="btn btn-md btn-primary" onClick="history.back()">Back</button>
			</div>
			
			<div class="col-sm-6">
				<input type="submit" class="btn btn-md btn-primary" id="goToQuestionaire" value="Save & Continue">
			</div>
		</div>
	</div>
	
	<script>
$(document).ready(function(){
var count = 0;
	$("#btn2").hide();
	$("#noVehicle").hide();
	$("#selected").hide();
    $("#btn1").click(function(){
        $("#btn1").hide();
        $("#btn2").show();
        $("#selected").show();
        $("#noVehicle").hide();
        count++;
    });
      $("#btn2").click(function(){
        $("#btn2").hide();
        $("#btn1").show();
        $("#selected").hide();
        count--;
    });
    $("#goToQuestionaire").click(function(){
      if(count>0){
      window.location = "http://localhost:8080/Asurance/public/app/templates/questionaire.jsp"
      } else {
      $("#noVehicle").show();
      }
    });
  
  
});
</script>
<script src= "../modules/modules.js"></script>
<script src= "../components/navbar-for-quote.js"></script>
</body>
</html>