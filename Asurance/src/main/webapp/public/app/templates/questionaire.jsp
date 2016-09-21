<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html ng-app="components">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="../../bower_components/angular/angular.js"></script>
<title>Vehicle</title>
<style>
li {
	cursor: pointer;
	cursor: hand;
}
</style>
</head>
<body>
<div navbar-header></div>
	<div class="container" style="
    margin-top: 86px;">

		<form class="form-horizontal" method="post">
			<div class="form-group">
				<label class="col-sm-3 control-label">Gender</label>
				<div class="col-sm-9">
					<label class="radio-inline"> <input type="radio"
						name="gender" value="male" checked>Male
					</label> <label class="radio-inline"> <input type="radio"
						name="gender" value="female">Female
					</label>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">Marital Status</label>
				<div class="col-sm-4">
					<select class="form-control" name="marital" required>
						<option value="">Select one</option>
						<option value="Single">Single</option>
						<option value="Married">Married</option>
						<option value="Divorced">Divorced</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">Highest Level Of
					Education </label>
				<div class="col-sm-4">
					<select class="form-control" name="education" required>
						<option value=""></option>
						<option value="HighSchool">High School</option>
						<option value="UnderGraduate">Undergraduate</option>
						<option value="Masters">Masters</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">Employee Status</label>
				<div class="col-sm-4">
					<select class="form-control" name="employment" required>
						<option value=""></option>
						<option value="Student">Student</option>
						<option value="Employed">Employed</option>
						<option value="SelfEmployed">Self-Employed</option>
						<option value="UnEmployed">Unemployed</option>
						<option value="Retired">Retired</option>
					</select>
				</div>
			</div>


			<div class="form-group">

				<label class="col-sm-3 control-label">Social Security Number<br>
				<small>(required for most accurate quote)</small></label>
				<div class="col-sm-4">
					<input class="form-control" name="ssn" maxlength="9" type="text"
						 required/>
				</div>

				<div class="col-sm-1">
					<a href="#"> <span class="glyphicon glyphicon-lock"></span>
					</a>
				</div>
			</div>

			<hr class="line">

			<h3>Residency</h3>

			<div class="form-group">
				<label class="col-sm-3 control-label">Primary Residence </label>
				<div class="col-sm-4">
					<select class="form-control" name="residence" >
						<option value=""></option>
						<option value="Permenant">Permenant</option>
						<option value="Temporary">Temporary</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">Moved in the last two
					months</label>
				<div class="col-sm-9">
					<label class="radio-inline"> <input type="radio"
						name="moved" value="yes">Yes
					</label> <label class="radio-inline"> <input type="radio"
						name="moved" value="no">No
					</label>
				</div>
			</div>
			<hr class="line">
			<h3>Driving History</h3>

			<div class="form-group">
				<label class="col-sm-3 control-label">US.License Status </label>
				<div class="col-sm-4">
					<select class="form-control" name="licenseStatus" required>
						<option value="Valid" selected>Valid</option>
						<option value="Invalid">Invalid</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">Years Licensed </label>
				<div class="col-sm-4">
					<select class="form-control" name="licensedYears" required>
						<option value=""></option>
						<option value="2016">2016</option>
						<option value="2015">2015</option>
						<option value="2014">2014</option>
						<option value="2013">2013</option>
						<option value="2012">2012</option>
						<option value="2011">2011</option>
					</select>
				</div>
			</div>
			<hr class="line">

			<h3>Additional Information</h3>

			<div class="form-group">
				<label class="col-sm-3 control-label">Primary Email Address<br>
				<small>(We will NOT sell your email address.)</small></label>
				<div class="col-sm-4">
					<input class="form-control" name="emailPrimary" type="email"
						required>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">How many residents
					live in the home?<br>
				<small>(Including drivers on quote,excluded drivers,children
						and roommates.)</small>
				</label>
				<div class="col-sm-4">
					<input class="form-control" name="residents" type="number" >

				</div>
			</div>
			<hr class="line">
			<h3>Accidents, Violations and Claims</h3>
			<p>As a driver you had any(regardless of fault):</p>

			<div class="form-group">
				<label class="col-sm-3 control-label">Total accidents, claims or
					other damages you had to your vehicle (last 5years/october 2011):<br>
				<small>eg:Hitting a car/object/property/animal, car hits you
						,weather,vandalism,theft,hail</small>
				</label>
				<div class="col-sm-4">
					<input class="form-control" name="claims" type="number"  required >
				</div> 
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">Total tickets or violations
					(last 3 years/oct 2013):</label>
				<div class="col-sm-4">
					<input class="form-control" name="tickets" type="number" required>
				</div>
			</div>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-sm-6">
					<button class="btn btn-md btn-primary" onClick="history.back()">Back</button>
				</div>

				<div class="col-sm-6">
					<input type="submit" id="goToFinalDetails" class="btn btn-md btn-primary" value="Save & Continue">
				</div>
			</div>
	</div>
	</form>
	</div>
	<script>
	$(document).ready(function(){
    
      $("#goToVehicles").click(function(){
      window.location = "http://localhost:8080/Asurance/public/app/templates/vehicleList.jsp"
    
    });
  
  
});
	</script>
	<script src= "../modules/modules.js"></script>
<script src= "../components/navbar-for-quote.js"></script>
</body>
</html>