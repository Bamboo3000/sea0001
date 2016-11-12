"use strict";

/**
 * BOOTSTRAP GULP
 *
 * @author Joe Green
 * @author Mwayi Dzanjalimodzi
 */

var gulp        = require('gulp'),
    browserify  = require('browserify'),
    concat      = require('gulp-concat'),
    cssmin      = require('gulp-minify-css'),
    gutil       = require('gulp-util'),
    plumber     = require('gulp-plumber'),
    replace     = require('gulp-replace-task'),
    sass        = require('gulp-sass'),
    source      = require('vinyl-source-stream'),
    uglify      = require('gulp-uglify');

var paths = {
    APP: '.',
    JS_SRC: './app/js',
    SASS_SRC: './app/scss',
    PUBLIC: './public',
    CSS: './public/assets/css',
    JS: './public/assets/js',
    IMAGES: './public/assets/img'
};

var sassModules = [
    'www'
];

var jsModules = [
    'www'
];

var sassSheets = {
    www: 'www/build.scss'
};

var cssDirs = {
    www: 'www'
};

var sassPrototypeSources = {
    www: [paths.APP + '/../prototype/src/scss/**/*.scss', paths.APP + '/../prototype/src/scss/**/*.css', paths.APP + '/../prototype/src/scss/**/*.sass']
};

var sassPrototypeDestinations = {
    www: paths.SASS_SRC + '/www/prototype'
};

var jsDirs = {
    www: 'www'
};

var jsPrototypeSources = {
    www: paths.APP + '/../prototype/src/js/app.js'
};

var jsPrototypeDestinations = {
    www: paths.JS_SRC + '/www/prototype'
};

var jsPrototypeReplaceTasks = {
    www: {
        description: "Replacing jquery document ready wrapper with browserify module export wrapper",
        patterns: [
            {
                match: '$(document).ready(function(){',
                replacement: "'use strict';\n\nmodule.exports = {\n\n init: function() {"
            },
            {
                match: /^}\);$/gm,
                replacement: " }\n\n};"
            }
        ],
        usePrefix: false
    }
};

var imageModules = [
    'www'
];

var imagePrototypeSources = {
    www: paths.APP + '/../prototype/build/assets/img/*'
};

var imagePrototypeDestinations = {
    www: paths.PUBLIC + '/assets/img'
};

var onError = function(err) {
    console.log(err.message);
    this.emit('end');
};




// ---------------------------------------------------------------------------------------------------------------------
// Run browserify on the given module
//
// This task takes javascript source from the module's app.js and compiles it into a browser-friendly script in public.
// =====================================================================================================================
var fnBrowserify = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('browserify'), '\' task on ', gutil.colors.yellow(module), 'module...');

    var jsSourceFile = paths.JS_SRC + '/' + jsDirs[module] + '/app.js';
    var jsDestPath = paths.JS + '/' + jsDirs[module];

    if (verbose) {
        gutil.log('Compiling from: ', gutil.colors.green(jsSourceFile));
        gutil.log('Compiling to: ', gutil.colors.green(jsDestPath + '/app.js'));
    }

    return browserify(jsSourceFile)
        .bundle().on('error', function(e){
            console.log(e);
        })
        .pipe(source('app.js'))
        .pipe(gulp.dest(jsDestPath))
        .on('end', function() {
            gutil.log('\'', gutil.colors.cyan('browserify'), '\' task on ', gutil.colors.yellow(module), 'module complete.');
        });
};

// ---------------------------------------------------------------------------------------------------------------------
// Run bundle on the given module
//
// This compiles the module's javascript libraries into a single uglified file called libs.js in public.
// =====================================================================================================================
var fnBundle = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('bundle'), '\' task on ', gutil.colors.yellow(module), 'module...');

    var jsSourceFile = paths.JS_SRC + '/' + jsDirs[module] + '/libs.js';
    var jsDestPath = paths.JS + '/' + jsDirs[module];

    var requiredLibs = require(jsSourceFile);
    for (var i in requiredLibs) {
        requiredLibs[i] = paths.JS_SRC + '/libs/' + requiredLibs[i]
    }

    if (verbose) {
        gutil.log('Reading libs from:', gutil.colors.green(jsSourceFile));
        console.log(requiredLibs);
        gutil.log('Writing to: ', gutil.colors.green(jsDestPath + '/libs.min.js'));
    }

    return gulp
        .src(requiredLibs, {base: '.'})
        .pipe(uglify({
            mangle: false,
            compress: true
        }))
        .pipe(concat('libs.min.js'), {newLine: ';'})
        .pipe(gulp.dest(jsDestPath))
        .on('end', function() {
            gutil.log('\'', gutil.colors.cyan('bundle'), '\' task on ', gutil.colors.yellow(module), 'module complete.');
        })
        ;
};

// ---------------------------------------------------------------------------------------------------------------------
// Run cssmin on the given module
//
// This task minifies css files
// =====================================================================================================================
var fnCssmin = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('cssmin'), '\' task on ', gutil.colors.yellow(module), 'module...');

    var cssDestination = paths.CSS + '/' + cssDirs[module];
    var cssSourceFiles = cssDestination + '/*.css';

    if (verbose) {
        gutil.log('CSS Source Files: ', gutil.colors.green(cssSourceFiles));
        gutil.log('CSS Destination: ', gutil.colors.green(cssDestination));
    }

    return gulp
        .src(cssSourceFiles)
        .pipe(plumber({
            errorHandler: onError
        }))
        .pipe(
            cssmin({
                keepSpecialComments: 0
            })
        )
        .pipe(
            gulp.dest(cssDestination)
        )
        .on('end', function() {
            gutil.log('\'', gutil.colors.cyan('cssmin'), '\' task on ', gutil.colors.yellow(module), 'module complete.');
        })
        ;
};

// ---------------------------------------------------------------------------------------------------------------------
// Run jsmin on the given module
//
// This task compresses the public scripts libs.min.js and app.js into app.min.js for the given modules.
// =====================================================================================================================
var fnJsmin = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('jsmin'), '\' task on ', gutil.colors.yellow(module), 'module...');

    var jsDestPath = paths.JS + '/' + jsDirs[module];
    var jsSourceFiles = [
        jsDestPath + '/libs.min.js',
        jsDestPath + '/app.js'
    ];

    if (verbose) {
        gutil.log('Reading from:');
        console.log(jsSourceFiles);
        gutil.log('Writing to: ', gutil.colors.green(jsDestPath + '/app.min.js'));
    }

    return gulp
        .src(jsSourceFiles, {base: '.'})
        .pipe(uglify({
            mangle: false,
            compress: true
        }))
        .pipe(concat('app.min.js'), {newLine: ';'})
        .pipe(gulp.dest(jsDestPath))
        .on('end', function() {
            gutil.log('\'', gutil.colors.cyan('jsmin'), '\' task on ', gutil.colors.yellow(module), 'module complete.');
        })
        ;
};

// ---------------------------------------------------------------------------------------------------------------------
// Run sass on the given module
//
// This task runs the scss files for the given modules through node sass and puts the generated css in public.
// =====================================================================================================================
var fnSass = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('sass'), '\' task on ', gutil.colors.yellow(module), 'module...');

    var sassFiles = paths.SASS_SRC + '/' + sassSheets[module];
    var parts = sassFiles.split('/');
    parts.pop();
    var sassDir = parts.join('/');
    var cssDir = paths.CSS + '/' + cssDirs[module];

    if (verbose) {
        gutil.log('SASS Files: ', gutil.colors.green(sassFiles));
        gutil.log('CSS Dir: ', gutil.colors.green(cssDir));
    }

    return gulp
        .src(sassFiles)
        .pipe(plumber({
            errorHandler: onError
        }))
        .pipe(
            sass({
                sourcemap: false,
                debug: false,
                outputStyle: 'compressed'
            })
        )
        .pipe(
            gulp.dest(cssDir)
        )
        .on('end', function() {
            gutil.log('\'', gutil.colors.cyan('sass'), '\' task on ', gutil.colors.yellow(module), 'module complete.');
        })
        ;
};

// ---------------------------------------------------------------------------------------------------------------------
// Run import-sass on the given module
//
// This task imports scss source files from prototype for the given module.
// =====================================================================================================================
var fnImportSassFromPrototype = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('import-sass'), '\' task on ', gutil.colors.yellow(module), 'module...');

    if (!(module in sassPrototypeSources)) {
        gutil.log(gutil.colors.red('ERROR: No sass prototype source defined for module '), gutil.colors.yellow(module));
        return;
    }

    if (!(module in sassPrototypeDestinations)) {
        gutil.log(gutil.colors.red('ERROR: No sass prototype destination defined for module '), gutil.colors.yellow(module));
        return;
    }

    var source = sassPrototypeSources[module];
    var dest = sassPrototypeDestinations[module];

    if (verbose) {
        gutil.log('Source: ', gutil.colors.green(source));
        gutil.log('Dest: ', gutil.colors.green(dest));
    }

    return gulp
        .src(source)
        .pipe(gulp.dest(dest))
        .on('end', function() {
            gutil.log('\'', gutil.colors.cyan('import-sass'), '\' task on ', gutil.colors.yellow(module), 'module complete.');
        })
        ;
};

// ---------------------------------------------------------------------------------------------------------------------
// Run import-js on the given module
//
// This task imports javascript source files from prototype for the given module.
// =====================================================================================================================
var fnImportJsFromPrototype = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('import-js'), '\' task on ', gutil.colors.yellow(module), 'module...');

    if (!(module in jsPrototypeSources)) {
        gutil.log(gutil.colors.red('ERROR: No javascript prototype source defined for module '), gutil.colors.yellow(module));
        return;
    }

    if (!(module in jsPrototypeDestinations)) {
        gutil.log(gutil.colors.red('ERROR: No javascript prototype destination defined for module '), gutil.colors.yellow(module));
        return;
    }

    var source = jsPrototypeSources[module];
    var dest = jsPrototypeDestinations[module];

    if (verbose) {
        gutil.log('Source: ', gutil.colors.green(source));
        gutil.log('Dest: ', gutil.colors.green(dest));
    }

    if (module in jsPrototypeReplaceTasks) {

        if (verbose && 'description' in jsPrototypeReplaceTasks[module]) {
            gutil.log(jsPrototypeReplaceTasks[module].description);
        }

        return gulp
            .src(source)
            .pipe(replace(jsPrototypeReplaceTasks[module]))
            .pipe(gulp.dest(dest))
            .on('end', function() {
                gutil.log('\'', gutil.colors.cyan('import-js'), '\' task on ', gutil.colors.yellow(module), 'module complete.');
            });

    } else {
        return gulp
            .src(source)
            .pipe(gulp.dest(dest))
            .on('end', function() {
                gutil.log('\'', gutil.colors.cyan('import-js'), '\' task on ', gutil.colors.yellow(module), 'module complete.');
            });
    }
};

// ---------------------------------------------------------------------------------------------------------------------
// Run import-images on the given module
//
// This task imports images from prototype for the given module.
// =====================================================================================================================
var fnImportImagesFromPrototype = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('import-images'), '\' task on ', gutil.colors.yellow(module), 'module...');

    if (!(module in imagePrototypeSources)) {
        gutil.log(gutil.colors.red('ERROR: No image prototype source defined for module '), gutil.colors.yellow(module));
        return;
    }

    if (!(module in imagePrototypeDestinations)) {
        gutil.log(gutil.colors.red('ERROR: No image prototype destination defined for module '), gutil.colors.yellow(module));
        return;
    }

    var source = imagePrototypeSources[module];
    var dest = imagePrototypeDestinations[module];

    if (verbose) {
        gutil.log('Source: ', gutil.colors.green(source));
        gutil.log('Dest: ', gutil.colors.green(dest));
    }

    return gulp
        .src(source)
        .pipe(gulp.dest(dest))
        .on('end', function() {
            gutil.log('\'', gutil.colors.cyan('import-images'), '\' task on ', gutil.colors.yellow(module), 'module complete.');
        })
        ;
};

// ---------------------------------------------------------------------------------------------------------------------
// Run watch-sass on the given module
//
// This task watches scss files for changes and runs the sass task on change.
// =====================================================================================================================
var fnWatchSass = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('watch-sass'), '\' task on ', gutil.colors.yellow(module), 'module...');

    var sassFiles = paths.SASS_SRC + '/' + sassSheets[module];

    if (verbose) {
        gutil.log('SASS Files: ', gutil.colors.green(sassFiles));
    }

    return gulp.watch(sassFiles, function() { fnSass(module, verbose); });
};

// ---------------------------------------------------------------------------------------------------------------------
// Run watch-js on the given module
//
// This task watches js app files for changes and runs the browserify task on change.
// =====================================================================================================================
var fnWatchJs = function(module, verbose) {

    gutil.log('Running \'', gutil.colors.cyan('watch-js'), '\' task on ', gutil.colors.yellow(module), 'module...');

    var jsFiles = paths.JS_SRC + '/' + jsDirs[module] + '/**/*.js';

    if (verbose) {
        gutil.log('JS source files: ', gutil.colors.green(jsFiles));
    }

    return gulp.watch(jsFiles, function() { fnBrowserify(module, verbose); });
};




/**
 * gulp sass [-v]
 * -OR-
 * gulp sass -m [module] [-v]
 */
gulp.task('build-sass', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the sass task on')
        .choices('m', sassModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnSass(argv.m, argv.v).on('end', cb);
    } else {
        var i = 0,
            j = sassModules.length,
            sassEndListener = function() {
                i++;
                if (i == j) {
                    cb();
                }
            }
            ;
        for (var m in sassModules) {
            fnSass(sassModules[m], argv.v).on('end', sassEndListener);
        }
    }
});

/**
 * gulp cssmin [-v]
 * -OR-
 * gulp cssmin -m [module] [-v]
 */
gulp.task('min-css', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the cssmin task on')
        .choices('m', sassModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnCssmin(argv.m, argv.v).on('end', cb);
    } else {
        var i = 0,
            j = sassModules.length,
            cssminEndListener = function() {
                i++;
                if (i == j) {
                    cb();
                }
            }
            ;
        for (var m in sassModules) {
            fnCssmin(sassModules[m], argv.v).on('end', cssminEndListener);
        }
    }
});

/**
 * gulp cssmin [-v]
 * -OR-
 * gulp cssmin -m [module] [-v]
 */
gulp.task('min-js', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the jsmin task on')
        .choices('m', jsModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnJsmin(argv.m, argv.v).on('end', cb);
    } else {
        var i = 0,
            j = jsModules.length,
            jsminEndListener = function() {
                i++;
                if (i == j) {
                    cb();
                }
            }
            ;
        for (var m in jsModules) {
            fnJsmin(jsModules[m], argv.v).on('end', jsminEndListener);
        }
    }
});

/**
 * gulp watch-sass [-v]
 * -OR-
 * gulp watch-sass -m [module] [-v]
 */
gulp.task('watch-sass', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the watch-sass task on')
        .choices('m', sassModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnWatchSass(argv.m, argv.v);
    } else {
        for (var m in sassModules) {
            fnWatchSass(sassModules[m], argv.v);
        }
    }
});

/**
 * gulp watch-js [-v]
 * -OR-
 * gulp watch-js -m [module] [-v]
 */
gulp.task('watch-js', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the watch-js task on')
        .choices('m', jsModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnWatchJs(argv.m, argv.v);
    } else {
        for (var m in jsModules) {
            fnWatchJs(jsModules[m], argv.v);
        }
    }
});

/**
 * gulp browserify [-v]
 * -OR-
 * gulp browserify -m [module] [-v]
 */
gulp.task('browserify', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the browserify task on')
        .choices('m', jsModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnBrowserify(argv.m, argv.v).on('end', cb);
    } else {
        var i = 0,
            j = jsModules.length,
            browserifyEndListener = function() {
                i++;
                if (i == j) {
                    cb();
                }
            }
            ;
        for (var m in jsModules) {
            fnBrowserify(jsModules[m], argv.v).on('end', browserifyEndListener);
        }
    }
});

/**
 * gulp bundle [-v]
 * -OR-
 * gulp bundle -m [module] [-v]
 */
gulp.task('bundle', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the bundle task on')
        .choices('m', jsModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnBundle(argv.m, argv.v).on('end', cb);
    } else {
        var i = 0, j = jsModules.length;
        for (var m in jsModules) {
            fnBundle(jsModules[m], argv.v).on('end', function() {
                i++;
                if (i == j) {
                    cb();
                }
            });
        }
    }
});

/**
 * gulp import-sass [-v]
 * -OR-
 * gulp import-sass -m [module] [-v]
 */
gulp.task('import-sass', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the import-sass task on')
        .choices('m', sassModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnImportSassFromPrototype(argv.m, argv.v).on('end', cb);
    } else {
        var i = 0, j = sassModules.length;
        for (var m in sassModules) {
            fnImportSassFromPrototype(sassModules[m], argv.v).on('end', function() {
                i++;
                if (i == j) {
                    cb();
                }
            });
        }
    }
});

/**
 * gulp import-js [-v]
 * -OR-
 * gulp import-js -m [module] [-v]
 */
gulp.task('import-js', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the import-js task on')
        .choices('m', jsModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnImportJsFromPrototype(argv.m, argv.v).on('end', cb);
        console.log('dupa');
    } else {
        console.log('dupa2');
        var i = 0, j = jsModules.length;
        for (var m in jsModules) {
            fnImportJsFromPrototype(jsModules[m], argv.v).on('end', function() {
                i++;
                if (i == j) {
                    cb();
                }
            });
        }
    }
});

/**
 * gulp import-images [-v]
 * -OR-
 * gulp import-images -m [module] [-v]
 */
gulp.task('import-images', function(cb) {
    var argv = require('yargs')
        .alias('m', 'module')
        .describe('m', 'Specify a module to run the import-images task on')
        .choices('m', imageModules)
        .alias('v', 'verbose')
        .boolean('v')
        .describe('v', 'Use the verbose flag to get more verbose output')
        .help('help')
            .argv
        ;

    if (argv.m) {
        fnImportImagesFromPrototype(argv.m, argv.v).on('end', cb);
    } else {
        var i = 0, j = imageModules.length;
        for (var m in imageModules) {
            fnImportImagesFromPrototype(imageModules[m], argv.v).on('end', function() {
                i++;
                if (i == j) {
                    cb();
                }
            });
        }
    }
});

// Build js
gulp.task('build-js', ['browserify', 'bundle']);

// Import the prototype
gulp.task('import', ['import-images', 'import-js', 'import-sass']);

// Update css
gulp.task('port-css', ['import-sass', 'build-sass', 'min-css']);

// Update js
gulp.task('port-js', ['import-js', 'build-js', 'min-js']);

// Update assets
gulp.task('port-assets', ['port-css', 'port-js', 'import-images']);

// Port everything from prototype to build
gulp.task('port', ['port-css', 'port-js', 'port-assets']);
