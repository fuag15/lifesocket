Lifesocket.Post = DS.Model.extend
  title: DS.attr 'string'
  full: DS.attr 'string'
  createdAt: DS.attr 'date'
  picture: DS.attr 'picture'

  humanDate: (->
    "#{window.lifesocket.util.month_names[@get('createdAt').getMonth()]} #{@get('createdAt').getDate()}, #{@get('createdAt').getFullYear()}"
  ).property 'createdAt'

  postPictures: DS.hasMany 'Lifesocket.PostPicture'