
'use strict';

angular.module('app', [])
    .controller('OfficerController', ['$scope', function ($scope) {
         $scope.vm = this;
    }])
    .directive('officer', function () {
        return
        {
            restrict: "A"
            scope: {
                officerName: '=?officerName'
                officerDescription: '=?description'
                term: '=?term'
            }
            templateUrl: 'officerDescription.html'
        }
    })