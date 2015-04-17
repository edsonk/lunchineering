`import Ember from "ember";`

LoginController = {
  actions:
    authenticate: ->
      data = this.getProperties('identification', 'password');
      this.get('session').authenticate('simple-auth-authenticator:devise', data);
}

`export default Ember.Controller.extend(LoginController);`
