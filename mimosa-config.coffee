exports.config =
  modules: ['lint', 'server', 'require', 'minify', 'live-reload', 'web-package']
  minMimosaVersion:"0.11.3"  # need at least 0.11.3 to take advantage of requirejs common config
  template:
    handlebars:
      helpers: ["app/templates/handlebars-helpers"]
      ember:
        enabled: true    # Whether or not to use the Ember Handlebars compiler
        path: "ember"    # location of the Ember library, requirejs path
  server:
    path: 'server.js'
