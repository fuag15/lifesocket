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
      @resource 'postPictures', ->
        @route 'new'
        @resource 'postPicture', path: '/:post_picture_id', ->
          @route 'show'
          @route 'edit'
  @resource 'jobCategories', ->
    @route 'new'
    @resource 'jobCategory', ->
      @route 'show'
      @route 'edit'
      @resource 'jobs', ->
        @route 'new'
        @resource 'job', path: '/:job_id', ->
          @route 'show'
          @route 'edit'
          @resource 'jobPictures', ->
            @route 'new'
            @resource 'jobPicture', path: '/:job_picture_id', ->
              @route 'show'
              @route 'edit'
  @resource 'projectCategories', ->
    @route 'new'
    @resource 'projectCategory', ->
      @route 'show'
      @route 'edit'
      @resource 'projects', ->
        @route 'new'
        @resource 'project', path: '/:project_id', ->
          @route 'show'
          @route 'edit'
          @resource 'projectPictures', ->
            @route 'new'
            @resource 'projectPicture', path: '/:project_picture_id', ->
              @route 'show'
              @route 'edit'
          @resource 'projectPackages', ->
            @route 'new'
            @resource 'projectPackage', path: '/:project_package_id', ->
              @route 'show'
              @route 'edit'
