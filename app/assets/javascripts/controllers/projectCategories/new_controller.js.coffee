Lifesocket.ProjectCategoriesNewController = Ember.ObjectController.extend
  create: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'projectCategory.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'projectCategories.index'

  buttonTitle: 'Create'
  headerTitle: 'Creating'