`import Ember from "ember";`

LoginController = {
  session: Ember.inject.service('session')

  actions:
    authenticate: ->
      # controller = @
      @get('session').authenticate('authenticator:devise', @get('identification'), @get('password'))
      # .then ->
      #   controller.get('previousTransition')?.retry() || controller.transitionToRoute('index')
}

`export default Ember.Controller.extend(LoginController);`
