EmberTodo.ItemsController = Ember.ArrayController.extend
  actions:
    createItem: ->
      todo = @store.createRecord "item",
        description: @get("newItemDescription")

      todo.save()
