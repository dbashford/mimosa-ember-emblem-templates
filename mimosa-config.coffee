exports.config =
  modules: ['lint', 'server', 'require', 'minify', 'live-reload', 'web-package']
  minMimosaVersion: '1.0.0'
  compilers:
    libs:
      handlebars: require('handlebars')
  template:
    handlebars:
      helpers: ['app/templates/handlebars-helpers']
      ember:
        enabled: true    # Whether or not to use the Ember Handlebars compiler
        path: 'ember'    # location of the Ember library, requirejs path
  server:
    path: 'server.js'
