Lifesocket.ProjectPackagesNewController = Ember.ObjectController.extend
  create: ->
    project = @get 'controllers.project.content'
    project.get('projectPackages').pushObject @content
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'projectPackage.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'projectPackages.index'

  needs: ['project']

  buttonTitle: 'Create'
  headerTitle: 'Creating'