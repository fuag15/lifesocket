Lifesocket.ProjectPicturesNewController = Ember.ObjectController.extend
  create: ->
    project = @get 'controllers.project.content'
    project.get('projectPictures').pushObject @content
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'projectPicture.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'projectPictures.index'

  needs: ['project']

  buttonTitle: 'Create'
  headerTitle: 'Creating'