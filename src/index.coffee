module = angular.module 'ngIndeterminateCheckbox', []
module.directive 'indeterminate', ->
  restrict: 'A'
  link: (scope, element, attributes) ->
    scope.$watch attributes.indeterminate, (val) ->
      element.prop('indeterminate', !!val)

