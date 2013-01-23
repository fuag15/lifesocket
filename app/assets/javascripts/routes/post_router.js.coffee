Lifesocket.PostShowRoute = Ember.Route.extend
  model: ->
    @modelFor 'post'

Lifesocket.PostEditRoute = Ember.Route.extend
  model: ->
    @modelFor 'post'

Lifesocket.PostsIndexRoute = Ember.Route.extend
  model: ->
    if Lifesocket.Post.isLoaded()
      Lifesocket.Post.all()
    else
      Lifesocket.Post.find()

Lifesocket.PostsNewRoute = Ember.Route.extend
  model: ->
    Lifesocket.Post.createRecord
      title: ''
      content: ''