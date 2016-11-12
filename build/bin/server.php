<?php
/**
 * This interactive command line script can be used to manage the php built-in webserver for the application.
 *
 * @author Joe Green <joe.green@smrtr.co.uk>
 * @package Smrtr\WpVanilla
 * @subpackage bin
 */

error_reporting(error_reporting() ^ E_USER_WARNING);

require_once __DIR__.'/../paths.php';
require_once ROOT_PATH.'/vendor/autoload.php';

use Symfony\Component\Console\Application;
use Smrtr\WpVanilla\Webserver\ServerStart;
use Smrtr\WpVanilla\Webserver\ServerStop;
use Smrtr\WpVanilla\Webserver\ServerStatus;

$app = new Application('server');
$app->add(new ServerStart);
$app->add(new ServerStop);
$app->add(new ServerStatus);
$app->run();
