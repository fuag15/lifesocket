Lifesocket.ProjectPictureEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'projectPictures.index'

  create: ->
    @store.commit()
    @transitionToRoute 'projectPicture.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'projectPicture.show', @content

  buttonTitle: 'Edit'
  headerTitle: 'Editing'