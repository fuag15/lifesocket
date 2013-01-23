Lifesocket.Post = DS.Model.extend
  title: DS.attr 'string'
  full: DS.attr 'string'
  createdAt: DS.attr 'date'
  pic: DS.attr 'string'
  thumb: DS.attr 'string'
  mini: DS.attr 'string'
  medium: DS.attr 'string'
  large: DS.attr 'string'

  humanDate: (->
    "#{window.lifesocket.util.month_names[@get('createdAt').getMonth()]} #{@get('createdAt').getDate()}, #{@get('createdAt').getFullYear()}"
  ).property 'createdAt'

  postPictures: DS.hasMany 'Lifesocket.PostPicture'