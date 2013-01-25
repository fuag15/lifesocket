Lifesocket.JobShowRoute = Ember.Route.extend
  model: ->
    @modelFor 'job'

Lifesocket.JobEditRoute = Ember.Route.extend
  model: ->
    @modelFor 'job'

Lifesocket.JobsIndexRoute = Ember.Route.extend
  model: ->
    if Lifesocket.Job.isLoaded()
      Lifesocket.Job.all()
    else
      Lifesocket.Job.find()

Lifesocket.JobsNewRoute = Ember.Route.extend
  model: ->
    Lifesocket.Job.createRecord
      name: ''
      text: ''
      detail: ''
      employer: ''
      rank: 0