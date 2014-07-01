#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require ember_todo

# for more details see: http://emberjs.com/guides/application/
window.EmberTodo = Ember.Application.create
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: false
  rootElement: "#ember-view"

EmberTodo.deferReadiness()

$ ->
  rootElement = $("#ember-view")

  if rootElement.length > 0
    if Ember.isEmpty(window.location.hash)
      window.location.assign("#/" + rootElement.data("route"))

    EmberTodo.advanceReadiness()

    token = $('meta[name="csrf-token"]').attr('content')
    $.ajaxPrefilter (options, originalOptions, xhr) ->
      return xhr.setRequestHeader('X-CSRF-Token', token)
