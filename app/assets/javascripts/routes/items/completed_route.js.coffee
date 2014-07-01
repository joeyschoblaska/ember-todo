EmberTodo.ItemsCompletedRoute = Ember.Route.extend
  model: ->
    @store.filter "item", (item) -> item.get("completed")

  renderTemplate: (controller) ->
    @render("items/index", {controller})
