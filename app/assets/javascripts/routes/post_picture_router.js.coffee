Lifesocket.PostPictureShowRoute = Ember.Route.extend
  model: ->
    @modelFor 'postPicture'

Lifesocket.PostPictureEditRoute = Ember.Route.extend
  model: ->
    @modelFor 'postPicture'

Lifesocket.PostPicturesIndexRoute = Ember.Route.extend
  model: ->
    if Lifesocket.PostPicture.isLoaded()
      Lifesocket.PostPicture.all()
    else
      Lifesocket.PostPicture.find()

Lifesocket.PostPicturesNewRoute = Ember.Route.extend
  model: ->
    Lifesocket.PostPicture.createRecord()