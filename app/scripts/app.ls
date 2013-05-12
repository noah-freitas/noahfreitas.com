angular.module('noahfreitas' [\com.noahfreitas.editor])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/' templateUrl: 'views/home.html', controller: 'home'
      .when '/posts/:postid' templateUrl: 'views/post.html', controller: 'post'
      .when '/editor' templateUrl: 'views/editor.html', controller: 'editor'
      .otherwise redirectTo: '/'
  ]
  .controller 'home' ['data', '$scope', (data, $scope) ->
    $scope.title = 'noahfreitas.com'
    $scope.posts = data
  ]

