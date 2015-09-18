`import Ember from "ember";`

LoginController = {
  actions:
    authenticate: ->
      controller = @
      @get('session').authenticate('simple-auth-authenticator:devise', @_authData())
      # .then ->
      #   controller.get('previousTransition')?.retry() || controller.transitionToRoute('index')

  _authData: ->
    @getProperties('identification', 'password')
}

`export default Ember.Controller.extend(LoginController);`
