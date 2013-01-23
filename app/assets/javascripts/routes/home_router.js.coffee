Lifesocket.HomeRoute = Ember.Route.extend
  model: ->
    if Lifesocket.Post.isLoaded()
      Lifesocket.Post.all()
    else
      Lifesocket.Post.find()