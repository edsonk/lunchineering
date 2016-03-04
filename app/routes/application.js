import Ember from 'ember';
import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend(ApplicationRouteMixin, {
  // setupController:function(controller, model){
  //   this.startGlobalTime();
  // },
  //
  // startGlobalTime: function() {
  //   var controller = this.get('controller');
  //   controller.set('now', Date.now());
  //   Ember.run.later(this, this.startGlobalTime, 1000);
  // },

  beforeModel: function(transition) {
    this._saveTransition(transition);
  },

  sessionAuthenticationSucceeded: function() {
    // this.get('previousTransition')?.retry() || this.transitionToRoute('index')
  },

  // actions: [
  //   willTransition: (transition) ->
  //     this._saveTransition(transition);
  // ]

  _saveTransition: function(transition) {
    if (transition.targetName !== 'login') {
      this.controllerFor('login').set('previousTransition', transition);
    }
  }
});
