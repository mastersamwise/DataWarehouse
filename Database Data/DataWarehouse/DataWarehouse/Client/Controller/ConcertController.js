
angular.module('dataWarehouse')
    .controller('ConcertController', ['$scope', '$state',
    function ($scope, $state) {
        $scope.vm = this;
        vm.message = "Hello there, everyone!";
    }]);