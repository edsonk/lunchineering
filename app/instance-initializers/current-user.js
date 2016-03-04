import Session from 'ember-simple-auth/services/session';

export default {
  name: 'current-user',
  before: 'ember-simple-auth',

  initialize: function(application) {
    Session.reopen({
      setCurrentUser: function() {
        if (this.get('isAuthenticated')) {
          application.container.lookup("service:store").queryRecord('user', {current: true}).then((user) => {
            this.set('currentUser', user);
          });
        }
      }.observes('isAuthenticated')
    });
  }
};
