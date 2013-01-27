Lifesocket.JobPictureEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'jobPictures.index'

  create: ->
    @store.commit()
    @transitionToRoute 'jobPicture.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'jobPicture.show', @content

  buttonTitle: 'Edit'
  headerTitle: 'Editing'