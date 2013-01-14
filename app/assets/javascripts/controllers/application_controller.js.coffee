Lifesocket.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
  ).property 'currentRoute'

  isUsers: (->
    @get('currentRoute') == 'posts'
  ).property 'currentRoute'