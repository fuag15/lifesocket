Lifesocket.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
  ).property 'currentRoute'

  isUsers: (->
    @get('currentRoute') == 'posts'
  ).property 'currentRoute'

  lastEditedYear: (->
    date = new Date()
    date.getFullYear()
  ).property 'lastEditedYear'

  lastEditedMonth: (->
    date = new Date()
    "#{date.getMonth()} #{date.getDate()}, #{date.getFullYear()}"
  ).property 'lastEditedMonth'

  lastEditedDetail: (->
    date = new Date()
    "#{date.getHours()}:#{date.getMinutes()}:#{date.getSeconds()}"
  ).property 'lastEditedDetail'