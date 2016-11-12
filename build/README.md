smrtr/wp-vanilla
================

A vanilla wordpress set up.

## Features
A coherent wordpress development framework that:

 - Uses composer to manage wordpress dependencies such as plugins and core
 - Has a robust and well-defined gulp workflow that only requires npm
 - Leverages wp-cli for command line access to wordpress administrative functions
 - Leverages the wp-foundation wordpress plugin
 - Includes scripts for installation and deployment
 - Encourages local theme development and remote plugin development

## Create project
This command creates a new project in a directory called `MYPROJECT`:

    composer create-project smrtr/wp-vanilla=1.x-dev MYPROJECT --repository-url  "https://satis.smrtr.co.uk/" -s dev

Change `MYPROJECT` to the desired project directory name.

Change `1.x-dev` to a tagged release for best results.
See the available releases at [satis.smrtr.co.uk](https://satis.smrtr.co.uk).

## Configure environment
Edit `app/config/environments.php` to add your own configuration. The keys are self-explanatory.

Later on, when you need to deploy to a new environment, just add the config to `app/config/environments.php`.

## Install via CLI
The install command will detect if there is a wordpress application already installed with an internal call to 
`vendor/bin/wp core is-installed`, so the database connection must be configured correctly. Make sure that your database
is set up according to the details configured for your environment in `app/config/environments.php`.

    bin/install <YOUR_ENVIRONMENT_NAME>
    
    Options:
      -e, --force-env		(Re)Create the environment artifact at data/environment.php
      -f, --force-config    (Re)Compile public/wp-core/wp-config.php
      -i, --import-db       Import data/db/import.sql

Substitute <YOUR_ENVIRONMENT_NAME> with the key to your environment configuration.

### Installing the first time
 - creates an environment artifact so that the application can know which environment it lives in
 - configures the wp cli tool
 - creates a wp-config.php file for your wordpress build
 - seeds the database through wp-cli

### Subsequent installations
You can leverage the install command to update parts of your wordpress application.
 
#### Update wp-config.php
To force the installer script to overwrite the `wp-config.php` file
use the `--force-config` option or `-f` for short:

    bin/install <YOUR_ENVIRONMENT_NAME> --force-config

#### Import a database
To import a database rename the SQL dump to `data/db/import.sql` and run the installer
using the `--import-db` flag or `-i` for short.

    bin/install <YOUR_ENVIRONMENT_NAME> -i

The import will automatically migrate site URLs if copying data from one configured environment to another.

## Managing wordpress plugins
Wordpress plugins are managed with composer.

### Download plugins
Simply run `composer install`.

### Install new plugins
You can install any wordpress plugin from [wpackagist.org](http://wpackagist.org) or
[satis.smrtr.co.uk](http://satis.smrtr.co.uk).

Begin by declaring the package(s) in `composer.json` and then run `composer update`.

### Activate plugins

Activate all of your installed plugins with `vendor/bin/wp plugin activate --all`

Activate one of your installed plugins with `vendor/bin/wp plugin activate <PLUGIN_NAME>`.

## Exporting the database

You can export the database to any location using the wp-cli [db export](http://wp-cli.org/commands/db/export/) command:

    vendor/bin/wp db export <PATH_TO_FILE.SQL>

If you plan to import it later through the installer, export it to data/db/import.sql:

    vendor/bin/wp db export data/db/import.sql

## Directories

`app` contains the server side source code.

`bin` contains command line scripts.

`data` contains runtime data.

`public` is the public docroot and contains the wordress installation.

### Wordpress paths

`public/wp-core` contains the wordpress core (installed with composer).

`public/wp-app` contains your custom wordpress code.
 
`public/wp-app/mu-plugins` contains your must-use plugins (installed with composer).

`public/wp-app/plugins` contains your plugins (installed with composer).

`public/wp-app/themes/main` is your theme and contains your theme files.

`public/wp-app/themes/main/app` contains your wordpress customisations courtesy of wp-foundation.

## Front-end Development

We use gulp as a task manager.

 - All of the required dependencies are available through npm with `npm install`.
 - Install gulp globally with `npm install --global gulp`.

### Javascript Development

The javascript lives in `app/js`.

By default the libraries go in `app/js/libs` - this directory is a space for vendor libraries and other shared scripts.

The 'main' javascript file for each module of your application is located at `app/js/<module>/app.js`.

A library manifest is stored in `app/js/<module>/libs.js` for each module of your application.

The compiled javascript files are placed in the theme, specifically into the directory `app/site/assets/js/<module>`.

#### `gulp bundle [-v] [-m <module>]`
(Re)Compile the app's libraries into a single uglified public distribution called libs.min.js.

 - Use the `v` flag for verbose output.
 - Use the `m` parameter to specify a single module to compile.
 
#### `gulp browserify [-v] [-m <module>]`
(Re)Compile the app's javascript source files into a browser-friendly public distribution called app.js.

 - Use the `v` flag for verbose output.
 - Use the `m` parameter to specify a single module to compile.

By default the wordpress template includes both files `libs.min.js` and `app.js` form the **www** module.

#### `gulp jsmin [-v] [-m <module>]`
Compress the scripts libs.min.js and app.js into a single minified distribution called app.min.js.

 - Use the `v` flag for verbose output.
 - Use the `m` parameter to specify a single module to compile.

To include `app.min.js` in the wordpress template, instead of including the libraries and application separately,
then from within the CMS, go to Settings > Custom Options Plus and set the variable *assets_prod* to 1.

### CSS Development

The source css lives in `app/css`.

Your stylesheets, for each module of your application, go into the directory `app/css/<module>`.

The compiled stylesheets are placed in `public/wp-app/themes/main/app/site/assets/css/<module>`.

#### `gulp sass [-v] [-m <module>]`
(Re)Compile css files from scss source.

 - Use the `v` flag for verbose output.
 - Use the `m` parameter to specify a single module to compile.
 
### `gulp cssmin [-v] [-m <module>]`
Compresses the compiled css files for the given module(s).

 - Use the `v` flag for verbose output.
 - Use the `m` parameter to specify a single module to compile.

### Watch Tasks

#### `gulp watch-sass [-v] [-m <module>]`
Watch scss files for changes and automatically run compass gulp task on change.

 - Use the `v` flag for verbose output.
 - Use the `m` parameter to specify a single module to compile.


#### `gulp watch-js [-v] [-m <module>]`
Watch js source files for changes and automatically run browserify gulp task on change.

 - Use the `v` flag for verbose output.
 - Use the `m` parameter to specify a single module to compile.


