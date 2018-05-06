/*global angular */
/*
 jQuery UI Datepicker plugin wrapper

 @note If ≤ IE8 make sure you have a polyfill for Date.toISOString()
 @param [ui-date] {object} Options to pass to $.fn.datepicker() merged onto uiDateConfig
 */

angular.module('ui.date', [])

.constant('uiDateConfig', {})

.directive('uiDate', ['uiDateConfig', function (uiDateConfig) {
    'use strict';
    var options;
    options = {};
    angular.extend(options, uiDateConfig);
    return {
        require: '?ngModel',
        link: function (scope, element, attrs, controller) {
            var getOptions = function () {
                return angular.extend({}, uiDateConfig, scope.$eval(attrs.uiDate));
            };
            var initDateWidget = function () {
                var showing = false;
                var opts = getOptions();
                var _afterInitialized = opts.afterInitialized || angular.noop;

                // If we have a controller (i.e. ngModelController) then wire it up
                if (controller) {

                    // Set the view value in a $apply block when users selects
                    // (calling directive user's function too if provided)
                    var _onSelect = opts.onSelect || angular.noop;
                    var _beforeShow = opts.beforeShow || angular.noop;
                    var _onClose = opts.onClose || angular.noop;

                    opts.onSelect = function (value, picker) {
                        scope.$apply(function () {
                            showing = true;
                            controller.$setViewValue(element.datepicker("getDate"));
                            _onSelect(value, picker);
                            element.blur();
                        });
                    };

                    opts.beforeShow = function (input, obj) {
                        showing = true;
                        _beforeShow(input, obj);
                    };

                    opts.onClose = function (value, picker) {
                        showing = false;
                        _onClose(value, picker);
                    };
                    element.off('blur.datepicker').on('blur.datepicker', function () {
                        if (!showing) {
                            scope.$apply(function () {
                                if (!element.val() || element.attr('placeholder') === element.val())
                                    return;

                                element.datepicker("setDate", element.datepicker("getDate"));
                                controller.$setViewValue(element.datepicker("getDate"));
                            });
                        }
                    });

                    // Update the date picker when the model changes
                    controller.$render = function () {
                        var date = controller.$viewValue;
                        if (angular.isDefined(date) && date !== '' && date !== null && !angular.isDate(date)) {
                            throw new Error('ng-Model value must be a Date object - currently it is a ' + typeof date + ' - use ui-date-format to convert it from a string');
                        }
                        element.datepicker("setDate", date);
                    };
                }
                // If we don't destroy the old one it doesn't update properly when the config changes
                element.datepicker('destroy');
                // Create the new datepicker widget
                element.datepicker(opts);

                if (controller) {
                    // Force a render to override whatever is in the input text box
                    controller.$render();
                }

                _afterInitialized(element);
            };
            // Watch for changes to the directives options
            scope.$watch(getOptions, initDateWidget, true);
            scope.$watch(getOptions, initDateWidget, true);
        }
    };
}
])

.constant('uiDateFormatConfig', '')

.directive('uiDateFormat', ['uiDateFormatConfig', function (uiDateFormatConfig) {
    var directive = {
        require: 'ngModel',
        link: function (scope, element, attrs, modelCtrl) {
            var dateFormat = attrs.uiDateFormat || uiDateFormatConfig;
            if (dateFormat) {
                // Use the datepicker with the attribute value as the dateFormat string to convert to and from a string
                modelCtrl.$formatters.push(function (value) {
                    if (angular.isString(value)) {
                        return jQuery.datepicker.parseDate(dateFormat, value);
                    }
                    return null;
                });
                modelCtrl.$parsers.push(function (value) {
                    if (value) {
                        try {
                            return jQuery.datepicker.formatDate(dateFormat, value);
                        } catch (e) {
                            return null;
                        }
                    }
                    return null;
                });
            } else {
                // Default to ISO formatting
                modelCtrl.$formatters.push(function (value) {
                    if (angular.isString(value)) {
                        return new Date(value);
                    }
                    return null;
                });
                modelCtrl.$parsers.push(function (value) {
                    if (value) {
                        return value.toISOString();
                    }
                    return null;
                });
            }
        }
    };
    return directive;
}])
.directive('uiDateMoment', [function () {
    var directive = {
        require: 'ngModel',
        link: function (scope, element, attrs, modelCtrl) {
            // Use the datepicker with the attribute value as the dateFormat string to convert to and from a string
            modelCtrl.$formatters.push(function (value) {
                if (moment.isMoment(value)) {
                    var zoneDiffInMinutes = value.zone();
                    var date = value.toDate();
                    var tzDate = new Date(date.getTime() + (date.getTimezoneOffset() * 60000) - (zoneDiffInMinutes * 60000));
                    return tzDate;
                }
                return null;
            });
            modelCtrl.$parsers.push(function (value) {
                if (value) {
                    var isoDate = moment(value).format('YYYY-MM-DD');
                    return moment(isoDate + ' ' + (timeZoneOffset)).zone(timeZoneOffset);
                }
                return null;
            });
        }
    };
    return directive;
}]);
