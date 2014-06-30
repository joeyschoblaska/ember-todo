EmberTodo.ItemsIndexRoute = Ember.Route.extend
  model: ->
    @modelFor("items")
