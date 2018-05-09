//(function () {
//    'use strict';

//    angular
//        .module('app')
//        .controller('User', user);

//    function user()
//    {
//        var vm = this;
//        vm.food = 'pizza';
//        vm.people = new Array("nik", "stephen");
//    }

//})();
'use strict'

angular.module('dataWarehouse.lxa')
    .controller('UserController', ['$scope', function ($scope) {
        //$scope.user = { firstName: 'Nik', lastName: 'Bournelis', ekNumber: '1473' };
        //$scope.firstName = "test";
        //$scope.lastName = 'test2';
    }])
    // change @ to = for two-way binding (once c# variables are created)
    .directive('myUser', function () {
        return {
            restrict: "A",
            scope: {
                firstName: '@?firstName',
                lastName: '@?lastName',
                ekNumber: '@?ekNumber'
            },
            templateUrl: 'Components/userInformation.html'
        }
    })