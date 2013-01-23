Lifesocket.WorkRoute = Ember.Route.extend
  model: ->
    if Lifesocket.JobCategory.isLoaded()
      Lifesocket.JobCategory.all()
    else
      Lifesocket.JobCategory.find()