`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin';`

EventRoute = Ember.Route.extend(AuthenticatedRouteMixin, {
  model: (params) ->
    Ember.RSVP.hash
      event: @store.findRecord('event', params.event_id, { reload: true })
      currentVote: @store.queryRecord('eventVote', { event_id: params.event_id, current: true })
})

`export default EventRoute`
