#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require ember_todo

# for more details see: http://emberjs.com/guides/application/
window.EmberTodo = Ember.Application.create(
  LOG_TRANSITIONS: true
  rootElement: "#ember-view"
)

EmberTodo.deferReadiness()

$ ->
  EmberTodo.advanceReadiness() if $("#ember-view").length > 0
