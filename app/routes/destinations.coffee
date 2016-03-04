`import Ember from 'ember'`

DestinationsRoute = Ember.Route.extend(
  model: ->
    @store.findAll('destination')
)

`export default DestinationsRoute`
