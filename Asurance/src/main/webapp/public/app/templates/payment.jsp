<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<link href="../../css/footer.css" rel="stylesheet">
<title>Payment</title>
</head>
<body>
 <div class="container" >
	<div class="row">
		<div
			class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<h2 class="btn btn-primary btn-block" style="font-size: 25px">
					<b>Payment Details</b>
				</h2>
				<hr class="colorgraph">
			<form role="form" name="paymentPage" 
				   action="" method="post" >
				 <span
								class="text-error"
								ng-show="paymentPage.submitted && paymentPage.$invalid"
								ng-style="errorField2">* Required Fields</span>
								<img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
								<br><br>
				
				<div class="row">
					

						<div class="form-group col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3" >
							<h4 >Debit/Credit Card Number </h4> 
							
							<input type="number" name="cardNumber" ng-model="model."
								id="card_num" class="form-control input-lg"
								placeholder="Valid Card Number" tabindex="1" minlength="16" maxlength="16" required  > <span
								class="text-error"
								ng-show="paymentPage.submitted && paymentPage.firstName.$invalid"
								ng-style="errorField">*</span>
						</div>
						
						
					<div class=" col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
						<div class="form-group">
							<h4>Expiry Date</h4><input type="date" name="expiryDate" ng-model="model.lastName"
								id="last_name" class="form-control input-lg"
								placeholder="MM/YY" tabindex="2" required> <span
								class="text-error"
								ng-show="registerPage.submitted && registerPage.lastName.$invalid"
								ng-style="errorField">*</span>
						</div>
					</div>
				</div>



				<div class="form-group col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<h4>CVC</h4><input type='number' name="cvc" ng-model="model.dateOfBirth"
						id="cvc" class="form-control input-lg" placeholder="CVC" maxlength="3"
						 required /> <span class="text-error"
						ng-show="registerPage.submitted && registerPage.dateOfBirth.$invalid"
						ng-style="errorField">*</span>
				
				</div>


				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
						<input  type="submit" value="Start Subscription"
							 class="btn btn-success btn-block btn-lg" ng-click="register(model)" tabindex="4" >
					</div>

				</div>
			</form>
		</div> 
	</div>
	<div custom-footer></div>
	 <script src="../../app/modules/modules.js"></script>
	 <script src= "../../app/components/footer.js"></script>
</body>
</html>