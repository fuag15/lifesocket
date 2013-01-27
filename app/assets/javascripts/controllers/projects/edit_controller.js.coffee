Lifesocket.ProjectEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'projects.index'

  create: ->
    @store.commit()
    @transitionToRoute 'project.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'project.show', @content

  buttonTitle: 'Edit'
  headerTitle: 'Editing'