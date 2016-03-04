`import DS from 'ember-data';`

attr = DS.attr

EventVote = DS.Model.extend
  destination_option: DS.belongsTo('destinationOption')
  created_at: attr('date')

  destinationName: Ember.computed 'destination_option.destinationName', ->
    @get('destination_option').get('destinationName')

`export default EventVote`
