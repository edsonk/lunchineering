`import Ember from "ember";`

EventController = {
  cableService: Ember.inject.service('cable')

  setupSubscription: Ember.on 'init', ->
    consumer = @get('cableService').createConsumer('ws://localhost:3000/cable')

    subscription = consumer.subscriptions.create 'EventVotesChannel',
      received: (vote) =>
        @store.pushPayload('event_vote', vote)

  actions:
    vote: (option) ->
      @model.currentVote.set('destination_option', option)
      @model.currentVote.save()
}

`export default Ember.Controller.extend(EventController);`
