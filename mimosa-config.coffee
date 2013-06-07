exports.config =
  modules: ['lint', 'server', 'require', 'minify', 'live-reload', 'web-package']
  minMimosaVersion: '0.12.6' # 0.12.6 required for handlebars lib switching
  template:
    handlebars:
      lib: require('handlebars')
      helpers: ['app/templates/handlebars-helpers']
      ember:
        enabled: true    # Whether or not to use the Ember Handlebars compiler
        path: 'ember'    # location of the Ember library, requirejs path
  server:
    path: 'server.js'
