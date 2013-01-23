Lifesocket.Router.reopen
  location: 'history'

Lifesocket.Router.map (match) ->
  @route 'home', path: '/'
  @route 'work'
  @route 'play'
  @route 'contact'
  @resource 'posts', ->
    @route 'new'
    @resource 'post', path: '/:post_id', ->
      @route 'show'
      @route 'edit'