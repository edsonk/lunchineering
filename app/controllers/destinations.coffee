`import Ember from "ember";`

DestinationsController = {
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
