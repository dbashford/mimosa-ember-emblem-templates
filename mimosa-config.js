exports.config = {
  minMimosaVersion: '2.0.0',
  modules: [
    'jshint',
    'csslint',
    'server',
    'require',
    'minify-js',
    'minify-css',
    'live-reload',
    'web-package',
    'emblem',
    'coffeescript',
    'copy'],
  emblem: {
    // need specific versions of emblem and handlebars for compatibility
    lib: require('emblem'),
    handlebars: require('handlebars'),
    emberPath: 'ember'
  },
  server: {
    path: 'server.js'
  }
}