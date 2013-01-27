Lifesocket.JobsNewController = Ember.ObjectController.extend
  create: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'job.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'jobs.index'

  buttonTitle: 'Create'
  headerTitle: 'Creating'