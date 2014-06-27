EmberTodo.IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo("items")
