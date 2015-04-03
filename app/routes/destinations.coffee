`import Ember from 'ember'`

DestinationsRoute = Ember.Route.extend(
  model: ->
    @store.find('destination')
)

`export default DestinationsRoute`
