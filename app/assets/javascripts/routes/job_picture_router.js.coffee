Lifesocket.JobPictureShowRoute = Ember.Route.extend
  model: ->
    @modelFor 'jobPicture'

Lifesocket.JobPictureEditRoute = Ember.Route.extend
  model: ->
    @modelFor 'jobPicture'

Lifesocket.JobPicturesIndexRoute = Ember.Route.extend
  model: ->
    if Lifesocket.JobPicture.isLoaded()
      Lifesocket.JobPicture.all()
    else
      Lifesocket.JobPicture.find()

Lifesocket.JobPicturesNewRoute = Ember.Route.extend
  model: ->
    Lifesocket.JobPicture.createRecord()