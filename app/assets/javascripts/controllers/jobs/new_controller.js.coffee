Lifesocket.JobsNewController = Ember.ObjectController.extend
  create: ->
    jobCategory = @get 'controllers.jobCatogry.content'
    jobCategory.get('jobs').pushObject @content
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'job.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'jobs.index'

  needs: ['jobCategory']

  buttonTitle: 'Create'
  headerTitle: 'Creating'