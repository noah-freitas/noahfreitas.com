angular.module 'noahfreitas' .controller 'post' ['data', '$routeParams', '$scope', (data, $routeParams, $scope) ->
  data.then (posts) -> $scope.post = (posts.filter (-> it.url is $routeParams.postid))[0]
]

