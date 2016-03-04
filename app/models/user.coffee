`import DS from 'ember-data';`

attr = DS.attr

User = DS.Model.extend
  email: attr('string')
  name: attr('string')

`export default User`
