`import Ember from 'ember';`

ApplicationController = {
  session: Ember.inject.service('session')

  actions:
    invalidateSession: ->
      @get('session').invalidate();
}

`export default Ember.Controller.extend(ApplicationController);`
