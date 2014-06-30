EmberTodo.ItemsRoute = Ember.Route.extend
  model: ->
    @store.find("item")
