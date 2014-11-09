angular.module 'noahfreitas' .controller 'post' ['data', '$routeParams', '$scope', (data, $routeParams, $scope) ->
  data.then (posts) ->
        $scope.post = (posts.filter (-> it.url is $routeParams.postid))[0]
        ($scope.post.scripts || []).forEach (src) ->
            script     = document.createElement 'script'
            script.src = src
            document.body.appendChild script
]
