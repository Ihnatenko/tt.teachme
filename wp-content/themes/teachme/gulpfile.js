
const gulp = require("gulp");
const sass = require('gulp-sass')(require('sass'));
const concat = require("gulp-concat");
const cleanCSS = require("gulp-clean-css");


const paths = {
    styles: {
        src: ["source/*.scss"],
        dest: "public/"
    },
    scripts: {
        src: ["source/js/*.js"],
        dest: "public/js/"
    }
};


function styles() {
    return gulp.src(paths.styles.src)
        .pipe(sass())
        .pipe(cleanCSS())
        .pipe(concat("main.css"))
        .pipe(gulp.dest(paths.styles.dest));
}


function watch() {
    gulp.watch(paths.styles.src, styles);
}

exports.styles = styles;
exports.watch = watch;

exports.default = watch;
