`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`

ApplicationRoute = Ember.Route.extend(ApplicationRouteMixin, {
  beforeModel: (transition) ->
    @_saveTransition(transition)

  sessionAuthenticationSucceeded: ->
    @get('previousTransition')?.retry() || @transitionToRoute('index')

  actions:
    invalidateSession: ->
      @get('session').invalidate()

    willTransition: (transition) ->
      @_saveTransition(transition)

  _saveTransition: (transition) ->
    if transition.targetName != 'login'
      @controllerFor('login').set('previousTransition', transition)
})

`export default ApplicationRoute`
