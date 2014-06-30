EmberTodo.ItemController = Ember.ObjectController.extend
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
