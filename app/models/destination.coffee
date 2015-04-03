`import DS from 'ember-data';`

attr = DS.attr

Destination = DS.Model.extend
  name: attr('string')
  created_at: attr('date')

`export default Destination`
