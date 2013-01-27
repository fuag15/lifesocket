Lifesocket.PostPicturessNewController = Ember.ObjectController.extend
  create: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'postPicture.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'postPictures.index'

  buttonTitle: 'Create'
  headerTitle: 'Creating'