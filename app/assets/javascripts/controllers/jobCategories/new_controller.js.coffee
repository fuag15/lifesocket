Lifesocket.JobCategoriesNewController = Ember.ObjectController.extend
  create: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'jobCategory.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'jobCategorys.index'

  buttonTitle: 'Create'
  headerTitle: 'Creating'