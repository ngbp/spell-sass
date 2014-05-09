sass = require 'gulp-sass'

module.exports = ( warlock ) ->
  warlock.flow 'sass-to-build',
    source: [ '<%= globs.source.sass %>' ]
    source_options:
      base: "<%= paths.source_app %>"
    tasks: [ 'webapp-build' ]
    merge: 'flow::styles-to-build::90'

  .add( 50, 'sass-compile', sass )

