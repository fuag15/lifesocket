Lifesocket.JobEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'jobs.index'

  create: ->
    @store.commit()
    @transitionToRoute 'job.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'job.show', @content

  buttonTitle: 'Edit'
  headerTitle: 'Editing'