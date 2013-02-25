exports.config =
  minMimosaVersion:"0.10.1"
  template:
    handlebars:
      ember:
        enabled: true    # Whether or not to use the Ember Handlebars compiler
        path: "ember"    # location of the Ember library, requirejs path
  server:
    path: 'server.js'
  require:
    verify:
      enabled:false # pending mimosa-require#9
