<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
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
<title>Driver Info</title>
<style>
li { cursor: pointer; cursor: hand; }
</style>
</head>
<body>
<div class="container-fluid text-center">
		<div class="row">
			<div class="col-sm-12">
				<h2 style="color: orange">Here are the drivers on your quote:</h2>
				
			</div>
		</div>
		<hr class="colorgraph">
		<div class="row">
			<div class="col-sm-6">
				<span id="selected" class="glyphicon glyphicon-ok"></span><small>PolicyHolder</small><br>
				${vehicleList.get(0).getMake() }
			
			</div>
			<div class="col-sm-6">
				<span>Added</span><br><button type="button" class="btn btn-lg btn-default" id="btn1">
					Edit
				</button>

			</div>
		</div>
		<hr class="colorgraph">
		<div class="row">
		<div class="col-sm-6">
		<h2>Add another driver?</h2>
		</div>
		<div class="col-sm-6">
			<button type="button" class="btn btn-lg btn-default" id="btn2">
					<span class="glyphicon glyphicon-plus"></span>Add to Quote

				</button>
		</div>
		</div>
		
		<hr class="colorgraph">
		<div class="row">
	
		<div class="row">
			<div class="col-sm-6">
				<ul class="pager">
					<li><a href="#">Previous</a></li>
				</ul>
			</div>
			
			<div class="col-sm-6">
				<ul class="pager">
					<li id="goToFinalDetails"><a>Save & Continue</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<script>
$(document).ready(function(){
var count = 0;
    $("#btn1").click(function(){
   window.location = "http://localhost:8080/Asurance/public/app/templates/questionaire.jsp"
    });
    
  
  
});
</script>
</body>
</html>