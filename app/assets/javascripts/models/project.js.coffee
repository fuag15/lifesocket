Lifesocket.Project = DS.Model.extend
  name: DS.attr 'string'
  version: DS.attr 'string'
  detail: DS.attr 'string'
  team: DS.attr 'string'
  rank: DS.attr 'number'
  picture: DS.attr 'picture'
  projectCategory: DS.belongsTo 'Livesocket.ProjectCategory'
  projectPictures: DS.hasMany 'Lifesocket.ProjectPicture'
  projectPackages: DS.hasMany 'Lifesocket.ProjectPackage'

DS.RESTAdapter.configure 'Lifesocket.Project',
  sideloadAs: 'projects'