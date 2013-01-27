Lifesocket.ProjectCategoryEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'projectCategories.index'

  create: ->
    @store.commit()
    @transitionToRoute 'projectCategory.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'projectCategory.show', @content

  buttonTitle: 'Edit'
  headerTitle: 'Editing'