#= require_self
#= require_tree ./routes
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./templates
#= require_tree ./views
#= require_tree ./helpers

window.Lifesocket = Ember.Application.create()

Lifesocket.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()