(function() {
  angular.module('carcascorerApp').service('humansRepository', [
    'Human', function(Human) {
      var create, destroy, find, init, self;
      self = this;
      init = function() {
        return console.log('dupa');
      };
      create = function(properties) {
        var human;
        human = Human.create(properties);
        return self.humans.push(human);
      };
      destroy = function(id) {
        return _.remove(self.humans, function(human) {
          return human.id === id;
        });
      };
      find = function(id) {
        return _.find(self.humans, function(human) {
          return human.id === id;
        });
      };
      init();
      self.humans = [];
      self.create = create;
      self.find = find;
      self.destroy = destroy;
      return this;
    }
  ]);

}).call(this);
