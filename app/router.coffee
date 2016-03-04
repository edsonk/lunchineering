`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'about'
  @route 'login'
  @route 'destinations', ->
    @route 'destination', resetNamespace: true, path: '/:destination_id'
  @route 'events', ->
    @route 'event', resetNamespace: true, path: '/:event_id'

`export default Router;`
