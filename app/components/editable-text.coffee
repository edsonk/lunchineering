`import Ember from 'ember'`

EditableTextComponent = Ember.Component.extend(
  actions:
    edit: ->
      @set('isEditing', true)

    doneEditing: ->
      @set('isEditing', false)
      @sendAction()
)

`export default EditableTextComponent`
