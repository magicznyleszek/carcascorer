(function() {
  angular.module('carcascorerApp').factory('Human', [
    function() {
      var Human;
      Human = (function() {
        function Human() {
          this.name = '';
          this.color = '';
        }

        Human.prototype.update = function(properties) {
          return Human.setProperties(this, properties);
        };

        Human.create = function(properties) {
          var human;
          human = new Human;
          Human.setProperties(human, properties);
          return human;
        };

        Human.setProperties = function(human, properties) {
          human.name = properties.name;
          return human.color = properties.color;
        };

        return Human;

      })();
      return Human;
    }
  ]);

}).call(this);
