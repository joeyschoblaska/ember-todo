EmberTodo.ItemController = Ember.ObjectController.extend
  completed: (() ->
    model = @get("model")
    model.get("completed")
  ).property("model.completed")
