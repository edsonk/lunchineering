`import Ember from 'ember'`

EventRoute = Ember.Route.extend(
  model: (params) ->
    @store.find('event', params.event_id)
)

`export default EventRoute`
