# For more information see: http://emberjs.com/guides/routing/

EmberTodo.Router.map ->
  @resource "items", ->
    @route "active"
    @route "completed"
