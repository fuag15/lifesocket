Lifesocket.ProjectCategory = DS.Model.extend
  name: DS.attr 'string'
  rank: DS.attr 'number'

  projects: DS.hasMany 'Lifesocket.Project'