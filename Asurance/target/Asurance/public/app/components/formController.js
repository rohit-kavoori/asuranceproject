angular.module("components").controller(
		'startPageCtrl',
		function($scope, $http) {
			$scope.save = function(model) {
				$scope.startPage.submitted = true;
				if ($scope.startPage.$valid) {
					console.log(model);

				} else {
					console.log('Errors in form data');
					$scope.errorField = {
						"color" : "red",
						"font-size" : "30px"
					}
					$scope.errorField2 = {
						"color" : "red"

					}
				}
			};

			$scope.register = function(model) {
		
				$scope.registerPage.submitted = true;
				$scope.registerPage.isPasswordMatch = false;
				if ($scope.registerPage.$valid
						&& model.password == model.passwordConfirmation) {
					$scope.registerPage.isPasswordMatch = true;
					var formData = {
						"firstName": model.firstName,
						"lastName": model.lastName,
						"dateOfBirth": model.dateOfBirth,
						"addressLine1": model.addressLine1,
						"addressLine2": model.addressLine2,
						"city": model.city,
						"state": model.state,
						"zip": model.zip,
						"password": model.password
					};
					
					$http.post('saveCustomer', formData);
					/*response.success(function(data, status, headers, config) {
						$scope.responseData = data;
					});
					response.error(function(data, status, headers, config) {
						console.log( "Exception details: " + JSON.stringify({data: data}));
					});*/
					
					/*var actionAttr = angular.element(document.querySelector('form'));
					actionAttr.attr('action', "saveCustomer");*/
					console.log(model);
					/*$http.post("saveCustomer", model).success(function(response) {
					
						console.log("success!");
					}).error(function(errResponse){
						console.log("error registrating user");
						
					});*/
				
					
				}

				else {
					console.log('Errors in form data');
					$scope.errorField = {
						"color" : "red",
						"font-size" : "30px"
					}
					$scope.errorField2 = {
							"color" : "red"

						}

				}
			};
		});