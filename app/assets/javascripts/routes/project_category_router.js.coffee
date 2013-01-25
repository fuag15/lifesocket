Lifesocket.ProjectCategoryShowRoute = Ember.Route.extend
  model: ->
    @modelFor 'projectCategory'

Lifesocket.ProjectCategoryEditRoute = Ember.Route.extend
  model: ->
    @modelFor 'projectCategory'

Lifesocket.ProjectCategoriesIndexRoute = Ember.Route.extend
  model: ->
    if Lifesocket.ProjectCategory.isLoaded()
      Lifesocket.ProjectCategory.all()
    else
      Lifesocket.ProjectCategory.find()

Lifesocket.ProjectCategoriesNewRoute = Ember.Route.extend
  model: ->
    Lifesocket.ProjectCategory.createRecord
      name: ''
      rank: 0