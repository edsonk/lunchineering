`import Ember from "ember";`

DestinationsController = {
  cableService: Ember.inject.service('cable')

  setupSubscription: Ember.on 'init', ->
    consumer = @get('cableService').createConsumer('ws://localhost:3000/cable')

    subscription = consumer.subscriptions.create 'DestinationsChannel',
      received: (destination) =>
        @store.pushPayload('destination', destination)

    # this.set('subscription', subscription)

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
