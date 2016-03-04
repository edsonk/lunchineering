`import Ember from "ember";`

EventController = {
  init: ->
    @_super()
    client = new Faye.Client('http://localhost:3000/faye')
    client.subscribe '/event_votes', (vote) =>
      @store.pushPayload('event_vote', vote)

  actions:
    vote: (option) ->
      @model.currentVote.set('destination_option', option)
      @model.currentVote.save()
}

`export default Ember.Controller.extend(EventController);`
