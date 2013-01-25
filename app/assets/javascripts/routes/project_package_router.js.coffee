Lifesocket.ProjectPackageShowRoute = Ember.Route.extend
  model: ->
    @modelFor 'projectPackage'

Lifesocket.ProjectPackageEditRoute = Ember.Route.extend
  model: ->
    @modelFor 'projectPackage'

Lifesocket.ProjectPackagesIndexRoute = Ember.Route.extend
  model: ->
    if Lifesocket.ProjectPackage.isLoaded()
      Lifesocket.ProjectPackage.all()
    else
      Lifesocket.ProjectPackage.find()

Lifesocket.ProjectPackagesNewRoute = Ember.Route.extend
  model: ->
    Lifesocket.ProjectPackage.createRecord
      version: ''