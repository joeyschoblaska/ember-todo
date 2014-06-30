EmberTodo.ItemController = Ember.ObjectController.extend
  actions:
    editItem: ->
      @set("isEditing", true)

    updateItem: ->
      @set("isEditing", false)

      if Ember.isEmpty(@get("description"))
        Ember.run.debounce(this, "send", "deleteItem", 100)
      else
        @get("model").save()

    deleteItem: ->
      item = @get("model")
      item.deleteRecord()
      item.save()

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
