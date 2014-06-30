EmberTodo.ItemsRoute = Ember.Route.extend
  model: ->
    return @store.find("item")
