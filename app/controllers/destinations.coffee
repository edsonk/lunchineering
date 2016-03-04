`import Ember from "ember";`

DestinationsController = {
  init: ->
    @_super()
    client = new Faye.Client('http://localhost:3000/faye')
    client.subscribe '/destinations', (destination) =>
      @store.pushPayload('destination', destination)

  actions:
    createDestination: ->
      destination = @store.createRecord('destination', name: 'New destination')

      onSuccess = (destination) =>
        @transitionToRoute('destination', destination)
      onFail = (destination) =>
        alert('Nope!')

      destination.save().then(onSuccess, onFail)

    deleteDestination: (destination) ->
      destination.destroyRecord()
      @transitionToRoute('destinations')
}

`export default Ember.Controller.extend(DestinationsController);`
