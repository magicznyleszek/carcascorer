angular.module('carcascorerApp').controller('PlayersCtrl', ['colorsConts', (colorsConts) ->
    vm = this

    test = ->
        console.log('test')

    vm.test = test
    return this
])
