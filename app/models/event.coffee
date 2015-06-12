`import DS from 'ember-data';`

attr = DS.attr

Event = DS.Model.extend
  destination_options: DS.hasMany('destination_options')
  created_at: attr('date')
  expires_at: attr('date')

`export default Event`
