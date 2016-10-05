angular.module("components")
    .directive("customFooter", [function () {
        return {
            templateUrl: "public/app/templates/footer.jsp",
            restrict: "A,E,C"
        };
       
}]);

angular.module("components")
.directive("customFooter2", [function () {
    return {
        templateUrl: "footer.jsp",
        restrict: "A,E,C"
    };
   
}]);
