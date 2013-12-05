'use strict'

angular.module('christmasrouletteApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
  .run( ($rootScope) ->
    $rootScope.$on('$viewContentLoaded',  () ->
      $(document).foundation()
    )
  )

