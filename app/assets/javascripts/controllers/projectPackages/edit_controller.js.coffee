Lifesocket.ProjectPackageEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'projectPackages.index'

  create: ->
    @store.commit()
    @transitionToRoute 'projectPackage.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'projectPackage.show', @content

  buttonTitle: 'Edit'
  headerTitle: 'Editing'