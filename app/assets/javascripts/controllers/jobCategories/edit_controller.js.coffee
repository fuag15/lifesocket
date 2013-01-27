Lifesocket.JobCategoryEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'jobCategories.index'

  create: ->
    @store.commit()
    @transitionToRoute 'jobCategory.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'jobCategory.show', @content

  buttonTitle: 'Edit'
  headerTitle: 'Editing'