Lifesocket.Router.reopen
  rootURL: '/'
  location: 'history'

Lifesocket.Router.map (match) ->
  match('/').to 'home'
  match('/posts').to 'posts', (match) ->
    match('/new').to 'new'
    match('/:post_id/edit').to 'edit'
    match('/:post_id').to 'show'