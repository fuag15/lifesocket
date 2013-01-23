Lifesocket.Project = DS.Model.extend
  name: DS.attr 'string'
  text: DS.attr 'string'
  version: DS.attr 'string'
  detail: DS.attr 'string'
  team: DS.attr 'string'
  rank: DS.attr 'integer'
  pic: DS.attr 'string'
  thumb: DS.attr 'string'
  mini: DS.attr 'string'
  medium: DS.attr 'string'
  large: DS.attr 'string'
  projectCategory: DS.attr 'belongsTo'
  projectPictures: DS.hasMany 'Lifesocket.ProjectPicture'
  projectPackages: DS.hasMany 'Lifesocket.ProjectPackage'

DS.RESTAdapter.configure 'Lifesocket.Project',
  sideloadAs: 'projects'