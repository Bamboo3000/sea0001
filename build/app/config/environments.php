<?php
/**
 * This file defines the configurations for each respective environment.
 * Edit this file to modify or add new environment configurations.
 *
 * Each environment accepts the following configurations:
 *
 *  - siteurl   [REQUIRED] [STRING]    [no trailing slash please]
 *  - dbname    [REQUIRED] [STRING]
 *  - dbuser    [REQUIRED] [STRING]
 *  - dbpass    [OPTIONAL] [STRING]
 *  - dbhost    [OPTIONAL] [STRING]
 *  - dbprefix  [OPTIONAL] [STRING]    [defaults to 'wp_']
 *  - debug     [OPTIONAL] [BOOLEAN]
 *  - constants [OPTIONAL] [ARRAY]     Associative array of constants you wish to define in wp-config.php
 *  - app       [OPTIONAL] [ARRAY]     Associative array of custom application config, available to foundation
 *
 * Use the key 'extends' to define one configuration as an extension of another.
 *
 * @author Joe Green <joe.green@smrtr.co.uk>
 * @package Smrtr\WpVanilla
 */

return [

    'bootstrap' => [
        'constants' => [
            'SMRTR_WP_VANILLA' => true,
        ],
        'app' => [
            'enforceHttps'  => false,
            'useCache'      => false,
        ],
        'dbprefix'  => 'searchit_',
    ],

    'development' => [
        'extends'   => 'bootstrap',
        'debug'     => true,
        'siteurl'   => 'http://searchit.jacobdeveloper.com',
        'dbhost'    => '23157.m.tld.pl',
        'dbname'    => 'baza23157_searchit',
        'dbpass'    => '4Rb{rPiL6Q',
        'dbuser'    => 'admin23157_searchit',
    ],

    'dev_jacob' => [
        'extends'   => 'development',
        'siteurl'   => 'http://sea0001.dev',
        'dbhost'    => '127.0.0.1',
        'dbname'    => 'db_dev_sea0001',
        'dbpass'    => 'mamp',
        'dbuser'    => 'root',
        'debug'     => true,
    ]

];