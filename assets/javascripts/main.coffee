root = this

require ["config"], (config) ->
  requirejs.config config
  
  require ["App", "ember"], (App, Ember) ->
    app_name = config.app_name or "App"
    root[app_name] = App = Ember.Application.create(App)
    App.deferUntilDOMReady()