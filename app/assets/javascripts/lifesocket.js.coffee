#= require_self
#= require_tree ./routes
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./helpers
#= require_tree ./templates

window.Lifesocket = Ember.Application.create()

DS.RESTAdapter.configure 'plurals',
  job_category: 'job_categories'
  project_category: 'project_categories'
  resume_category: 'resume_categories'

Lifesocket.Store = DS.Store.extend
  revision: 11
  adapter: 'DS.RESTAdapter'