
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


function scripts() {
    return gulp.src(paths.scripts.src, { sourcemaps: true })
        .pipe(concat("main.js"))
        .pipe(gulp.dest(paths.scripts.dest));
}


function watch() {
    gulp.watch(paths.scripts.src, scripts);
    gulp.watch(paths.styles.src, styles);
}


var build = gulp.series(gulp.parallel(styles, scripts));

exports.styles = styles;
exports.scripts = scripts;
exports.watch = watch;
exports.build = build;

exports.default = watch;
