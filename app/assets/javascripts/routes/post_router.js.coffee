Lifesocket.PostsRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set 'currentRoute', 'posts'

Lifesocket.PostShowRoute = Ember.Route.extend
  model: (params) ->
    console.log params
    Lifesocket.Post.find params.post_id

Lifesocket.PostEditRoute = Ember.Route.extend
  model: (params) ->
    console.log params
    Lifesocket.Post.find params.post_id

Lifesocket.PostsIndexRoute = Lifesocket.PostsRoute.extend
  model: ->
    if Lifesocket.Post.isLoaded()
      Lifesocket.Post.all()
    else
      Lifesocket.Post.find()
  setupController: (controller, model) ->
    @_super()
    controller.set 'posts', model

Lifesocket.PostsNewRoute = Lifesocket.PostsRoute.extend
  model: ->
    Lifesocket.Post.createRecord
      title: ''
      content: ''
  setupController: (controller, model) ->
    @_super()
    controller.set 'content', model