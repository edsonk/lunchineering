`import DS from 'ember-data';`

attr = DS.attr

DestinationOption = DS.Model.extend
  event: DS.belongsTo('event')
  destination: DS.belongsTo('destination')
  event_votes: DS.hasMany('event_votes')
  selected: attr('boolean')
  created_at: attr('date')

  destinationName: Ember.computed.alias('destination.name')
  voteCount: Ember.computed.alias('event_votes.length')

`export default DestinationOption`
