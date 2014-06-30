EmberTodo.ItemsController = Ember.ArrayController.extend
  actions:
    createItem: ->
      todo = @store.createRecord "item",
        description: @get("newItemDescription")

      todo.save()

      @set("newItemDescription", "")

  numRemaining: ( ->
    @filterBy("completed", false).get("length")
  ).property("@each.completed")

  numRemainingInflection: ( ->
    if @get("numRemaining") == 1 then "item" else "items"
  ).property("numRemaining")
