Lifesocket.JobCategory = DS.Model.extend
  name: DS.attr 'string'
  rank: DS.attr 'number'

  jobs: DS.hasMany 'Lifesocket.Job'