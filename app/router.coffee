`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'about'
  @resource 'destinations', ->
    @resource 'destination', path: '/:destination_id'

`export default Router;`
