Lifesocket.PostPictureEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'postPictures.index'

  create: ->
    @store.commit()
    @transitionToRoute 'postPicture.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'postPicture.show', @content

  buttonTitle: 'Edit'
  headerTitle: 'Editing'