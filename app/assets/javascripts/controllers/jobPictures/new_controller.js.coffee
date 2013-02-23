Lifesocket.JobPicturesNewController = Ember.ObjectController.extend
  create: ->
    job = @get 'controllers.job.content'
    job.get('jobPictures').pushObject @content
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'jobPicture.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'jobPictures.index'

  needs: ['job']

  buttonTitle: 'Create'
  headerTitle: 'Creating'