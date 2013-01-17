Lifesocket.PostEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'posts.index'

  create: ->
    @store.commit()
    @transitionToRoute 'post.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'post.show', @content

  buttonTitle: 'Edit'
  headerTitle: 'Editing'