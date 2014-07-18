coffee = require 'coffee-script/register'
stylish = require 'jshint-stylish'
jshint = require 'gulp-jshint'
mocha = require 'gulp-mocha'
gulp = require 'gulp'

gulp.task 'lint', ->
    gulp.src('.lib/*.js')
        .pipe(jshint())
        .pipe(jshint.reporter stylish)

gulp.task  'test', ->
    gulp.src('./test/*.coffee', { read: false })
        .pipe(mocha {reporter: 'spec'})


gulp.task 'default', ['lint', 'test']
