angular.module('carcascorerApp').factory('Human', [ ->

    class Human
        constructor: ->
            @name = ''
            @color = ''
        update: (properties) ->
            Human.setProperties(@, properties)

        @create: (properties) ->
            human = new Human
            Human.setProperties(human, properties)
            return human

        @setProperties: (human, properties) ->
            human.name = properties.name
            human.color = properties.color

    return Human
])
