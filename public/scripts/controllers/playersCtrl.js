(function() {
  angular.module('carcascorerApp').controller('PlayersCtrl', [
    'config', function(config) {
      var test, vm;
      vm = this;
      test = function() {
        return console.log('test');
      };
      vm.test = test;
      return this;
    }
  ]);

}).call(this);
