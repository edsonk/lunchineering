`import DS from 'ember-data';`

attr = DS.attr

Event = DS.Model.extend
  destination_options: DS.hasMany('destination_options')
  created_at: attr('date')
  expires_at: attr('date')
  state: attr()

  isClosed: Ember.computed 'state', ->
    @get('state') == 'closed'

  selectedDestination: Ember.computed 'destination_options.@each.selected', ->
    @get('destination_options').findBy('selected', true)

  selectedDestinationName: Ember.computed.alias('selectedDestination.destinationName')

`export default Event`
