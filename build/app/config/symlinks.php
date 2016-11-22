<?php
/**
 * This file contains symlinks to be set up by the vanilla installer.
 *
 * The map is from symlink path to destination path.
 *
 * All paths must be given as absolute paths, on both sides of the array.
 *
 * You can use the constants ROOT_PATH, APP_PATH, PUBLIC_PATH to build absolute paths.
 *
 * @author Joe Green <joe.green@smrtr.co.uk>
 * @package Smrtr\WpVanilla
 */

return [
    PUBLIC_PATH.'/wp-core/wp-content' => PUBLIC_PATH.'/wp-app',
];
