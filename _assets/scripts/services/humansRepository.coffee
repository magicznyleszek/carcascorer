angular.module('carcascorerApp').service('humansRepository', ['Human', (Human) ->

    self = this

    init = ->
        console.log('dupa')

    create = (properties) ->
        human = Human.create(properties)
        self.humans.push(human)

    destroy = (id) ->
        _.remove(self.humans, (human) -> human.id is id)

    find = (id) ->
        return _.find(self.humans, (human) -> human.id is id)

    init()

    self.humans = []
    self.create = create
    self.find = find
    self.destroy = destroy

    return this

])
