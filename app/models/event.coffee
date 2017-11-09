`import BaseModel from './base-model';`

attr = DS.attr

Event = BaseModel.extend
  destination_options: DS.hasMany('destination_options')
  created_at: attr('date')
  expires_at: attr('date')
  state: attr()

  delegations: [
    ['destinationName', 'test', to: 'selectedDestinationOption', prefix: 'selected']
  ]

  isClosed: Ember.computed 'state', ->
    @get('state') == 'closed'

  selectedDestinationOption: Ember.computed 'destination_options.@each.selected', ->
    @get('destination_options').findBy('selected', true)

  selectedDestinationName: Ember.computed.alias('selectedDestinationOption.destinationName')

`export default Event`
