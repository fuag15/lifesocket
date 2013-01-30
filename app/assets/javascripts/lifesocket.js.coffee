#= require_self
#= require_tree ./routes
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./helpers
#= require_tree ./views
#= require_tree ./templates

window.Lifesocket = Ember.Application.create()

DS.RESTAdapter.configure 'plurals',
  job_category: 'job_categories'
  project_category: 'project_categories'
  resume_category: 'resume_categories'

DS.RESTAdapter.registerTransform 'picture',
  deserialize: (serialized) ->
    serialized
  serialize: (data) ->
    if data
      if data.picture then `undefined` else data
    else
      `undefined`

DS.RESTAdapter.registerTransform 'file',
  deserialize: (serialized) ->
    serialized
  serialize: (data) ->
    if data then data else `undefined`

Lifesocket.Store = DS.Store.extend
  revision: 11
  adapter: 'DS.RESTAdapter'



