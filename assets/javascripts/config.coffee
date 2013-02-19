define
  app_name: "MyExampleApp"
  
  urlArgs: "b=" + ((new Date()).getTime())

  shim:
    ember:
      deps: ["handlebars", "jquery"]
      exports: "Ember"
      
    jqueryui: ["jquery"]

    templates: ["handlebars", "ember"]

  paths:
    App: "app/main"
    models: "app/models"
    views: "app/views"
    controllers: "app/controllers"
    # templates: "app/templates"
    routes: "app/routes"
    
    #libs
    jquery: "vendor/jquery/1.9.1/jquery"
    handlebars: "vendor/handlebars/1.0.0-rc.3/handlebars"
    ember: "vendor/ember/1.0.0-rc.1/ember"
    jqueryui: "vendor/jquery.ui/1.10.0/jquery-ui"
    bootstrap: "vendor/bootstrap/2.3.0/boostrap"
    templates: "templates"
    
    #requirejs-plugins
    text: "vendor/requirejs-plugins/text"
    hbs: "vendor/requirejs-plugins/hbs"
    domReady: "vendor/requirejs-plugins/domReady"

  #hbs plugin options
  hbs:
    disableI18n: true
    templateExtension: "html"