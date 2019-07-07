"use strict"

const gulp = require("gulp");
const sass = require("gulp-sass");
const imagemin = require("gulp-imagemin");


sass.compiler = require("node-sass");

gulp.task('imagemin',imgSquash)
gulp.task('default',watch);
gulp.task('sass',compilaSass);

function compilaSass(){
return gulp
	.src("src/scss/**/*.scss")
	.pipe(sass({outputStyle:"compressed"}).on("error",sass.logError))
	.pipe(gulp.dest("src/css"));
}
function imgSquash() {
	return gulp 
	.src("src/images/**/*")
	.pipe(imagemin()) 
	.pipe(gulp.dest("./src/minified/images"));
	}
function watch(){
gulp.watch("src/scss/**/*.scss",compilaSass);
gulp.watch("src/images/**/*",imgSquash);
}