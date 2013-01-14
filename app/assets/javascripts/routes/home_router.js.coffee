Lifesocket.HomeRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set 'currentRoute', 'home'