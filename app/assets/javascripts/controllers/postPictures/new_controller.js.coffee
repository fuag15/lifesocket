Lifesocket.PostPicturessNewController = Ember.ObjectController.extend
  create: ->
    post = @get 'controllers.post.content'
    post.get('postPictures').pushObject @content
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'postPicture.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'postPictures.index'

  needs: ['post']

  buttonTitle: 'Create'
  headerTitle: 'Creating'