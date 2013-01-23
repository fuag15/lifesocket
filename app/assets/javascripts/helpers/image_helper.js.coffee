Ember.Handlebars.registerBoundHelper 'imageSrc', (image_url, options) ->
  new Handlebars.SafeString "<a href='#{image_url}'><img src='#{image_url}'></a>"