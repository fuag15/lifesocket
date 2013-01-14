Lifesocket.PostsNewController = Ember.ObjectController.extend
  create: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'post.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'posts.index'

  buttonTitle: 'Create'
  headerTitle: 'Creating'