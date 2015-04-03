`import Ember from 'ember'`

DestinationRoute = Ember.Route.extend(
  model: (params) ->
    @store.find('destination', params.destination_id)
)

`export default DestinationRoute`
