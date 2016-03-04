`import Ember from "ember";`

EventsController = {
  actions:
    createEvent: ->
      event = @store.createRecord('event')

      onSuccess = (event) =>
        @transitionToRoute('event', event)
      onFail = (event) =>
        alert('Error: something went wrong :(')

      event.save().then(onSuccess, onFail)
}

`export default Ember.Controller.extend(EventsController);`
