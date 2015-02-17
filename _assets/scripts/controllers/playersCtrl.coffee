angular.module('carcascorerApp').controller('PlayersCtrl', ['config', (config) ->
    vm = this

    test = ->
        console.log('test')

    vm.test = test
    return this
])
