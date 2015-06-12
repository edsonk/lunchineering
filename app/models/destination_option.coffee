`import DS from 'ember-data';`

attr = DS.attr

DestinationOption = DS.Model.extend
  event: DS.belongsTo('event')
  destination: DS.belongsTo('destination')
  created_at: attr('date')

`export default DestinationOption`
