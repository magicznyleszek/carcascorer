module.exports = (grunt) ->

    # configuration
    grunt.initConfig(
        pkg: grunt.file.readJSON('package.json')
        svgstore:
            default:
                options:
                    prefix: 'icon-'
                    svg:
                        style: 'width: 0; height: 0; overflow: hidden; position: fixed; visibility: hidden;'
                    formatting:
                        indent_size: 4
                files:
                    '_includes/icons.svg': ['_assets/icons/*.svg']
        compass:
            default:
                options:
                    config: '_assets/config.rb'
                    basePath: '_assets'
        coffee:
            default:
                options:
                    sourceMap: false
                expand: true
                cwd: '_assets/scripts'
                src: ['**/*.coffee']
                dest: 'public/scripts'
                ext: '.js'
        watch:
            icons:
                options:
                    spawn: false
                    debounceDelay: 250
                files: ['_assets/icons/*.svg']
                tasks: ['svgstore']
            styles:
                files: ['_assets/sass/**/*.scss']
                tasks: ['compass']
            scripts:
                files: ['_assets/scripts/**/*.coffee']
                tasks: ['coffee']
    )

    # load tasks
    grunt.loadNpmTasks('grunt-svgstore')
    grunt.loadNpmTasks('grunt-contrib-compass')
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-watch')

    # register tasks
    grunt.registerTask('default', ['watch'])
    grunt.registerTask('build', ['svgstore', 'compass', 'coffee'])
