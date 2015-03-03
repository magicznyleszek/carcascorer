(function() {
  angular.module('carcascorerApp').controller('PlayersCtrl', [
    'colorsConst', 'humansRepository', function(colorsConst, humansRepository) {
      var fetus, test, vm;
      vm = this;
      fetus = {
        name: '',
        color: void 0
      };
      test = function() {
        return console.log('test');
      };
      vm.test = test;
      vm.fetus = fetus;
      vm.humans = humansRepository.humans;
      vm.create = humansRepository.create;
      return this;
    }
  ]);

}).call(this);
