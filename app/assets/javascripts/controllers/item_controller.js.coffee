EmberTodo.ItemController = Ember.ObjectController.extend
  actions:
    editItem: ->
      @set("isEditing", true)

    updateItem: ->
      model = @get("model")
      model.set("description", @get("description"))
      model.save()
      @set("isEditing", false)


  isEditing: false

  completed: ((key, value) ->
    model = @get("model")

    if value is undefined
      # getter
      model.get("completed")
    else
      # setter
      model.set("completed", value)
      model.save()
      value
  ).property("model.completed")
