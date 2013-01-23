Lifesocket.PlayRoute = Ember.Route.extend
  model: ->
    if Lifesocket.ProjectCategory.isLoaded()
      Lifesocket.ProjectCategory.all()
    else
      Lifesocket.ProjectCategory.find()