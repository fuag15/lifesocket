Lifesocket.ResumeCategory = DS.Model.extend
  name: DS.attr 'string'
  rank: DS.attr 'number'

  resumeStatistics: DS.hasMany 'Lifesocket.ResumeStatistic'