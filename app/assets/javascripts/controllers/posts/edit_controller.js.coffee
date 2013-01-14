Lifesocket.PostsEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionTo('posts.index')

  update: ->
    @store.commit()
    @transitionTo('posts.show', @content)

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionTo('posts.show', @content)

  buttonTitle: 'Edit'
  headerTitle: 'Editing'