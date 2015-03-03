angular.module('carcascorerApp').controller('PlayersCtrl', ['baseConst', 'humansRepository', (baseConst, humansRepository) ->

    vm = this

    fetus =
        name: ''
        color: undefined

    test = ->
        console.log('test')

    vm.test = test
    vm.fetus = fetus
    vm.colors = baseConst.colors
    vm.humans = humansRepository.humans
    vm.create = humansRepository.create

    return this

])
