`import Ember from 'ember'`

CountdownTimerComponent = Ember.Component.extend(
  tagName: 'span'

  willRender:         -> @setDuration()
  didInsertElement:   -> @tick()
  willDestroyElement: -> @cancel()

  tick: ->
    @set 'nextTick', Ember.run.later(@, @refresh, 1000)

  cancel: ->
    Ember.run.cancel @get('nextTick')

  refresh: ->
    @setDuration()
    @tick()

  setDuration: ->
    @set 'duration', moment.duration(moment(@time).diff())

  output: Ember.computed 'duration', ->
    @get('duration').format()
)

`export default CountdownTimerComponent`
