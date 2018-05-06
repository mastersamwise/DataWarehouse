
'use strict';

angular.module('dataWarehouse.lxa')
    .controller('OfficerController', ['$scope', function ($scope) {
         $scope.vm = this;
    }])
    .directive('officer', function () {
        return
        {
            restrict: "A"
            scope: {
                officerName: '@?officerName'
                officerDescription: '@?officerDescription'
                term: '@?term'
            }
            templateUrl: 'officerDescription.html'
        }
    })