`import DS from 'ember-data';`

config = {
  host: 'http://localhost:3000'
}

`export default DS.ActiveModelAdapter.reopen(config);`
