`import Ember from 'ember'`

EventsRoute = Ember.Route.extend(
  model: ->
    @store.findAll('event')
)

`export default EventsRoute`
