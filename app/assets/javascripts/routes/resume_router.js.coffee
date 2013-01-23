Lifesocket.ResumeRoute = Ember.Route.extend
  model: ->
    if Lifesocket.ResumeCategory.isLoaded()
      Lifesocket.ResumeCategory.all()
    else
      Lifesocket.ResumeCategory.find()