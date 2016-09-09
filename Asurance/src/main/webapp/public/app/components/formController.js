angular.module("components")
.controller('startPageCtrl', function($scope, $http) {
$scope.save = function(model) {
$scope.startPage.submitted = true;
if($scope.startPage.$valid) {
console.log(model);

}
else {
console.log('Errors in form data');
$scope.errorField = {
"color" : "red"
}
}
};

$scope.register = function(model){
	$scope.registerPage.submitted = true;
	$scope.registerPage.isPasswordMatch = false;
	if($scope.registerPage.$valid && model.password == model.passwordConfirmation){
		$scope.registerPage.isPasswordMatch = true;
		console.log(model);
		$http({
			method: "POST",
			url: "saveCustomer",
			data: model,
			headers: {'Content-Type': 'application/x-www-form-urlencoded'}
		}).success(function(data){
			console.log("success");
		}).error(function(){
			console.log("error");
		});
	}
	
	else {
		console.log('Errors in form data');
	$scope.errorField = {
	"color" : "red"
		}
	}
};
});