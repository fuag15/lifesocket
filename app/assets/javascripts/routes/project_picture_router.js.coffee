Lifesocket.ProjectPictureShowRoute = Ember.Route.extend
  model: ->
    @modelFor 'projectPicture'

Lifesocket.ProjectPictureEditRoute = Ember.Route.extend
  model: ->
    @modelFor 'projectPicture'

Lifesocket.ProjectPicturesIndexRoute = Ember.Route.extend
  model: ->
    if Lifesocket.ProjectPicture.isLoaded()
      Lifesocket.ProjectPicture.all()
    else
      Lifesocket.ProjectPicture.find()

Lifesocket.ProjectPicturesNewRoute = Ember.Route.extend
  model: ->
    Lifesocket.ProjectPicture.createRecord()