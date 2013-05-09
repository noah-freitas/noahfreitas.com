angular.module('noahfreitas' [])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/' templateUrl: 'views/home.html', controller: 'home'
      .when '/posts/:postid' templateUrl: 'views/post.html', controller: 'post'
      .otherwise redirectTo: '/'
  ]
  .controller 'home' ['data', '$scope', (data, $scope) ->
    $scope.title = 'noahfreitas.com'
    $scope.posts = data
  ]

