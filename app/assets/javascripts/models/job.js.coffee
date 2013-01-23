Lifesocket.Job = DS.Model.extend
  name: DS.attr 'string'
  text: DS.attr 'string'
  detail: DS.attr 'string'
  employer: DS.attr 'string'
  rank: DS.attr 'integer'
  pic: DS.attr 'string'
  thumb: DS.attr 'string'
  mini: DS.attr 'string'
  medium: DS.attr 'string'
  large: DS.attr 'string'
  jobCategory: DS.attr 'belongsTo'
  jobPictures: DS.hasMany 'Lifesocket.JobPicture'

DS.RESTAdapter.configure 'Lifesocket.Job',
  sideloadAs: 'jobs'