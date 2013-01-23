Lifesocket.JobPicture = DS.Model.extend
  pic: DS.attr 'string'
  thumb: DS.attr 'string'
  mini: DS.attr 'string'
  medium: DS.attr 'string'
  large: DS.attr 'string'
  job: DS.belongsTo 'Lifesocket.Job'

DS.RESTAdapter.configure 'Lifesocket.JobPicture',
  sideloadAs: 'job_pictures'