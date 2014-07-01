EmberTodo.ItemsController = Ember.ArrayController.extend
  actions:
    createItem: ->
      item = @store.createRecord "item",
        description: @get("newItemDescription")

      item.save()

      @set("newItemDescription", "")

    clearCompleted: ->
      for item in @filterBy("completed", true)
        item.deleteRecord()
        item.save()

  numRemaining: ( ->
    @filterBy("completed", false).get("length")
  ).property("@each.completed")

  numRemainingInflection: ( ->
    if @get("numRemaining") == 1 then "item" else "items"
  ).property("numRemaining")

  numCompleted: ( ->
    @filterBy("completed", true).get("length")
  ).property("@each.completed")

  anyCompleted: ( ->
    @get("numCompleted") > 0
  ).property("numCompleted")

  allCompleted: ((key, value) ->
    if value is undefined
      # getter
      @get("numRemaining") == 0 and @get("numCompleted") > 0
    else
      # setter
      @forEach (item) ->
        item.set("completed", value)
        item.save()
  ).property("@each.completed")
