Lifesocket.ResumeStatistic = DS.Model.extend
  name: DS.attr 'string'
  rank: DS.attr 'integer'
  resumeCategor: DS.attr 'belongsTo'

DS.RESTAdapter.configure 'Lifesocket.ResumeStatistic',
  sideloadAs: 'resume_statistics'