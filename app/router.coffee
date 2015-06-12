`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'about'
  @route 'login'
  @resource 'destinations', ->
    @resource 'destination', path: '/:destination_id'
  @resource 'events', ->
    @resource 'event', path: '/:event_id'

`export default Router;`
