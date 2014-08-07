exports.config = {
  minMimosaVersion: '2.1.0',
  modules: [
    'jshint',
    'csslint',
    'server',
    'require',
    'minify-js',
    'minify-css',
    'live-reload',
    'web-package',
    'emblem@2.0.2',
    'coffeescript',
    'copy',
    'bower',
    'handlebars-on-window',
    'fix-rjs-ember'
  ],
  emblem: {
    emberPath: 'ember'
  },
  server: {
    path: 'server.js'
  }
}
