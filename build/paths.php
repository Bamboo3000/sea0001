<?php
/**
 * Define some important paths.
 *
 * @author Joe Green
 * @package Smrtr/WpVanilla
 */

// Common paths that wp-vanilla is interested in
define('ROOT_PATH', realpath(__DIR__));
define('APP_PATH', ROOT_PATH.'/app');
define('PUBLIC_PATH', ROOT_PATH.'/public');
define('DATA_PATH', ROOT_PATH.'/data');
define('TESTS_PATH', ROOT_PATH.'/tests');

/**
 * Include the composer autoloader.
 */
require_once __DIR__.'/vendor/autoload.php';
