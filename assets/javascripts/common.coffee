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
    jquery: "vendor/jquery/1.9.1/jquery"
    handlebars: "vendor/handlebars"
    ember: "vendor/ember/1.0.0-rc.1/ember"
    jqueryui: "vendor/jquery.ui/1.10.0/jquery-ui"
    bootstrap: "vendor/bootstrap/2.3.0/bootstrap"
    templates: "templates"
  hbs:
    disableI18n: true
    templateExtension: "html"