module.exports = (grunt) ->

  grunt.initConfig

    coffee:
      app:
        options:
          sourceMap: true
        files:
          'app.js': 'app.coffee'

    uglify:
      options:
        sourceMap: 'app.map'
        sourceMapIn: 'app.js.map'
      app:
        files:
          'app.min.js': 'app.js'


  grunt.registerTask 'default', ['coffee', 'uglify']


  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'