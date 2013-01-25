Lifesocket.ProjectShowRoute = Ember.Route.extend
  model: ->
    @modelFor 'project'

Lifesocket.ProjectEditRoute = Ember.Route.extend
  model: ->
    @modelFor 'project'

Lifesocket.ProjectsIndexRoute = Ember.Route.extend
  model: ->
    if Lifesocket.Project.isLoaded()
      Lifesocket.Project.all()
    else
      Lifesocket.Project.find()

Lifesocket.ProjectsNewRoute = Ember.Route.extend
  model: ->
    Lifesocket.Project.createRecord
      name: ''
      text: ''
      version: ''
      detail: ''
      team: ''
      rank: 0