Lifesocket.ProjectPackagesNewController = Ember.ObjectController.extend
  create: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'projectPackage.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'projectPackages.index'

  buttonTitle: 'Create'
  headerTitle: 'Creating'