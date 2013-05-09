angular.module 'noahfreitas' .service 'data' ['$http', '$q', ($http, $q) ->
  deferred = $q.defer!
  $http.get \data.json .success ((data) -> deferred.resolve data) .error ((data) -> deferred.reject data)
  return deferred.promise
]

