Lifesocket.PostPicture = DS.Model.extend
  pic: DS.attr 'string'
  thumb: DS.attr 'string'
  mini: DS.attr 'string'
  medium: DS.attr 'string'
  large: DS.attr 'string'
  
  post: DS.belongsTo 'Lifesocket.Post'

DS.RESTAdapter.configure 'Lifesocket.PostPicture',
  sideloadAs: 'post_pictures'