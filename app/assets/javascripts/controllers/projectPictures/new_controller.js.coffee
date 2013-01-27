Lifesocket.ProjectPicturesNewController = Ember.ObjectController.extend
  create: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'projectPicture.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'projectPictures.index'

  buttonTitle: 'Create'
  headerTitle: 'Creating'