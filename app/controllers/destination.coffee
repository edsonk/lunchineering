`import Ember from "ember";`

DestinationController = {
  isEditing: false,

  actions:
    save: ->
      @model.save()
}

`export default Ember.Controller.extend(DestinationController);`
