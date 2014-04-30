describe 'angular-indeterminate-checkbox', ->
  {element, scope} = {}

  beforeEach ->
    module('ngIndeterminateCheckbox')
    inject ($compile, $rootScope) ->
      scope = $rootScope.$new true
      scope.c = indeterminate: yes
      element = $compile('<input type="checkbox" indeterminate="c.indeterminate">')(scope)
      scope.$digest()

  it 'marks a checkbox as indeterminate', ->
    expect(element.prop('indeterminate')).to.be.true

  it 'removes the indeterminate value on request', ->
    scope.c.indeterminate = no
    scope.$digest()

    expect(element.prop('indeterminate')).to.be.false
