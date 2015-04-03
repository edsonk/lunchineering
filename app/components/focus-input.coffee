`import Ember from 'ember'`

FocusInputComponent = Ember.TextField.extend(
  becomeFocused: (->
    this.$().select()
  ).on('didInsertElement')
)

`export default FocusInputComponent`
