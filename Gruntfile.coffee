module.exports = (grunt) ->

  grunt.initConfig

    coffee:
      options:
        sourceMap: true
      app1:
        files:
          'app1.js': 'app1.coffee'
      app2:
        files:
          'app2/app2.js': 'app2/app2.coffee'

    uglify:
      app1:
        options:
          sourceMap: 'app1.map'
          sourceMapIn: 'app1.js.map'
        files:
          'app1.min.js': 'app1.js'
      app2:
        options:
          sourceMap: 'app2/app2.map'
          sourceMapIn: 'app2/app2.js.map'
          sourceMappingURL: '/app2/app2.js.map'
        files:
          'app2/app2.min.js': 'app2/app2.js'


  grunt.registerTask 'default', ['coffee', 'uglify']


  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'