module.exports = (grunt) ->
  
  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    watch:
      ember_templates:
        files: ["assets/javascripts/app/templates/**/*.hbs", "assets/javascripts/app/templates/**/*.handlebars"]
        tasks: "ember_templates:compile"

    ember_templates:
      compile:
        options:
          templateName: (sourceFile) ->
            sourceFile.replace /assets\/javascripts\/app\/templates\//, ""

        files:
          "assets/javascripts/templates.js": ["assets/javascripts/app/templates/**/*.hbs", "assets/javascripts/app/templates/*.handlebars"]

  
  # Load the plugin that provides the "ember_templates" task.
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-ember-templates"
  
  # Default task(s).
  grunt.registerTask "default", ["ember_templates"]