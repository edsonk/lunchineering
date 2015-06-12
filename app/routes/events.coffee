`import Ember from 'ember'`

EventsRoute = Ember.Route.extend(
  model: ->
    @store.find('event')
)

`export default EventsRoute`
