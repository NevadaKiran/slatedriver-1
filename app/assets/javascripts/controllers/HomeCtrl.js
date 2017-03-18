angular
  .module('slateDriver')
  .controller('HomeCtrl',
    function($http, $scope, $rootScope, Auth){
    $scope.hello = "Hello World"
    $scope.fucku  = "fuck you world"

    function get() {
      console.log("got")
      $http.get('/slates')
      .then(function(getSlates){
        console.log(getSlates.data)
        $scope.slate = getSlates.data
      })
    }

  } HomeCtrl)