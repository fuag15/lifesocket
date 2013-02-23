Lifesocket.ProjectsNewController = Ember.ObjectController.extend
  create: ->
    project_category = @get 'controllers.projectCategory.content'
    project_category.get('projects').pushObject @content
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'project.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'projects.index'

  needs: ['projectCategory']

  buttonTitle: 'Create'
  headerTitle: 'Creating'