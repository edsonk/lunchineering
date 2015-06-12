`import Ember from "ember";`

EventsController = {
  actions:
    createEvent: ->
      event = @store.createRecord('event')

      onSuccess = (event) =>
        @transitionToRoute('event', event)
      onFail = (event) =>
        alert('Nope!')

      event.save().then(onSuccess, onFail)
}

`export default Ember.Controller.extend(EventsController);`
