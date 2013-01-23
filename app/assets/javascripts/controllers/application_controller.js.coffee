Lifesocket.ApplicationController = Ember.Controller.extend
  lastEditedYear: (->
    date = new Date()
    date.getFullYear()
  ).property 'lastEditedYear'

  lastEditedMonth: (->
    date = new Date()
    "#{window.lifesocket.util.month_names[date.getMonth()]} #{date.getDate()}, #{date.getFullYear()}"
  ).property 'lastEditedMonth'

  lastEditedDetail: (->
    date = new Date()
    "#{("0" + date.getHours()).slice(-2)}:#{("0" + date.getMinutes()).slice(-2)}:#{("0" + date.getSeconds()).slice(-2)}"
  ).property 'lastEditedDetail'