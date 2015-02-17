(function() {
  angular.module('carcascorerApp').service('humansRepository', [
    'Human', function(Human) {
      var createHuman, destroyHuman, findHuman, init, self;
      self = this;
      self.humans = [];
      init = function() {
        return console.log('dupa');
      };
      createHuman = function(properties) {
        var human;
        human = Human.create(properties);
        self.humans.push(human);
        return countHumans();
      };
      destroyHuman = function(id) {
        return _.remove(self.humans, function(human) {
          return human.id === id;
        });
      };
      findHuman = function(id) {
        return _.find(self.humans, function(human) {
          return human.id === id;
        });
      };
      init();
      self.findHuman = findHuman;
      self.destroyHuman = destroyHuman;
      return this;
    }
  ]);

}).call(this);
