Lifesocket.ProjectPicture = DS.Model.extend
  pic: DS.attr 'string'
  thumb: DS.attr 'string'
  mini: DS.attr 'string'
  medium: DS.attr 'string'
  large: DS.attr 'string'
  project: DS.belongsTo 'Lifesocket.Project'

DS.RESTAdapter.configure 'Lifesocket.ProjectPicture',
  sideloadAs: 'project_pictures'