Lifesocket.Router.reopen
  location: 'history'

Lifesocket.Router.map (match) ->
  @route 'home',
    path: '/'
  @resource 'posts', ->
    @route 'new'
    @resource 'post', path: '/:post_id', ->
      @route 'show'
      @route 'edit'