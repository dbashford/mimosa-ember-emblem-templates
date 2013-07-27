root = this

require ["common"], ->

  require ["App", "ember"], (App, Ember) ->
    app_name = "MyExampleApp"
    root[app_name] = App = Ember.Application.create(App)
