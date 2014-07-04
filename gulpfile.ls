require! <[ gulp gulp-util express path ]>
gutil = gulp-util

gulp.task 'default' ->
  app = express!
  app.use express.static path.resolve '.'
  app.listen 3000 ->
    gutil.log 'Listen on 3000'
