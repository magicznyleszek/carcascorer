angular.module('carcascorerApp').controller('PlayersCtrl', ['colorsConst', 'humansRepository', (colorsConst, humansRepository) ->

    vm = this

    fetus =
        name: ''
        color: undefined

    test = ->
        console.log('test')

    vm.test = test
    vm.fetus = fetus
    vm.humans = humansRepository.humans
    vm.create = humansRepository.create

    return this

])
