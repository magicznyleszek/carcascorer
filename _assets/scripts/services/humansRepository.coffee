angular.module('carcascorerApp').service('humansRepository', ['Human', (Human) ->
    self = this
    self.humans = []

    init = ->
        console.log('dupa')

    createHuman = (properties) ->
        human = Human.create(properties)
        self.humans.push(human)
        countHumans()

    destroyHuman = (id) ->
        _.remove(self.humans, (human) -> human.id is id)

    findHuman = (id) ->
        return _.find(self.humans, (human) -> human.id is id)

    init()

    self.findHuman = findHuman
    self.destroyHuman = destroyHuman

    return this
])
