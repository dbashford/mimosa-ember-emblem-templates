requirejs.config
  urlArgs: "b=" + ((new Date()).getTime())
  shim:
    ember:
      deps: ["handlebars", "jquery"]
      exports: "Ember"
    jqueryui: ["jquery"]
  paths:
    App: "app/main"
    models: "app/models"
    views: "app/views"
    controllers: "app/controllers"
    routes: "app/routes"

    #libs
    jquery: "vendor/jquery/jquery"
    handlebars: "vendor/handlebars/handlebars"
    ember: "vendor/ember/ember"
    jqueryui: "vendor/jqueryui/jquery-ui"
    bootstrap: "vendor/bootstrap/2.3.0/bootstrap"
