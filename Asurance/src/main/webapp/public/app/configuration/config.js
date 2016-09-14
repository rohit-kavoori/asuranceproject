(function () {
    angular.module("autoInsurance")
        .config(["$urlRouterProvider", "$stateProvider", function ($urlRouterProvider, $stateProvider) {
            //configuring the routes
            var loginObj = {
            	url: "login",
                templateUrl: "public/app/templates/login.jsp"
                
            };
            var registerObj = {
            		url: "register",
                templateUrl: "public/app/templates/register.jsp"
            };
            var productsObj = {
            		url: "quote",
                templateUrl: "public/app/templates/tabs.jsp"
            };
            $stateProvider.state("login", loginObj);
            $stateProvider.state("register", registerObj);
            $stateProvider.state("quote", productsObj);
    }]).run(["$state", function ($state) {
            $state.go("quote");
    }])
  
})();



/*    $stateProvider

    .state('login', {
        url: '#/login',
        templateUrl: 'public/app/templates/login.jsp'
    })
    .state('register', {
        url: '#/register',
        templateUrl: 'public/app/templates/register.jsp'
    })
    .state('quote', {
        url: '#/quote',
        templateUrl: 'public/app/templates/tabs.jsp'
    });


});
  angular.bootstrap(document.getElementById("header"), ['routeProvider']);*/
