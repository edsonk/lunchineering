`import Ember from 'ember'`

SelectableItemComponent = Ember.Component.extend(
  classNames: 'selectable-item'

  toggleSelection: Ember.on 'didInsertElement', ->
    @toggle(@selected)

  click: ->
    @toggle true
    @sendAction('action', @value)

  toggle: (value) ->
    @$('input').prop('checked', value)
)

`export default SelectableItemComponent`
