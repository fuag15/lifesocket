Lifesocket.ProjectPackage = DS.Model.extend
  packagedVersion: DS.attr 'string'
  version: DS.attr 'string'
  project: DS.belongsTo 'Lifesocket.Project'

DS.RESTAdapter.configure 'Lifesocket.ProjectPackage',
  sideloadAs: 'project_packages'