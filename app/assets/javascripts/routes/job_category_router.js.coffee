Lifesocket.JobCategoryShowRoute = Ember.Route.extend
  model: ->
    @modelFor 'jobCategory'

Lifesocket.JobCategoryEditRoute = Ember.Route.extend
  model: ->
    @modelFor 'jobCategory'

Lifesocket.JobCategoriesIndexRoute = Ember.Route.extend
  model: ->
    if Lifesocket.JobCategory.isLoaded()
      Lifesocket.JobCategory.all()
    else
      Lifesocket.JobCategory.find()

Lifesocket.JobCategoriesNewRoute = Ember.Route.extend
  model: ->
    Lifesocket.JobCategory.createRecord
      name: ''
      rank: 0