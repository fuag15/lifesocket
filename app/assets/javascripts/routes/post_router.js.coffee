Lifesocket.PostsRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set 'currentRoute', 'posts'

Lifesocket.PostsShowRoute = Lifesocket.PostsRoute.extend
  model: (params) ->
    Lifesocket.Post.find params.post_id
  setupController: (controller, model) ->
    @_super()
    controller.set 'content', model

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