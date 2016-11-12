<?php
/**
 * This interactive command line script can be used to install the wordpress vanilla application
 * onto the environment.
 *
 * Not to be confused with starting a new project.
 * We use the term installation as in deployment.
 *
 * @author Joe Green <joe.green@smrtr.co.uk>
 * @package Smrtr\WpVanilla
 * @subpackage bin
 */

error_reporting(error_reporting() ^ E_USER_WARNING);

require_once __DIR__.'/../paths.php';
require_once ROOT_PATH.'/vendor/autoload.php';

use Symfony\Component\Console\Application;
use Smrtr\WpVanilla\Installer\EnvironmentConfigValidator;

$environmentsFile = ROOT_PATH.'/app/config/environments.php';
if (!is_readable($environmentsFile)) {
    throw new \Exception("Could not read environments file at $environmentsFile");
}

$app = new Application('install');

$classTemplate = <<<HEREDOC
class %sCommand extends \Smrtr\WpVanilla\Installer\InstallCommand
{
    protected \$env = '%s';
}
HEREDOC;

$environments = EnvironmentConfigValidator::getValidEnvironments();
foreach ($environments as $env) {
    eval(sprintf($classTemplate, ucfirst($env), $env));
    $command = ucfirst($env) . 'Command';
    $app->add(new $command);
}

// Run the CLI installer app
$app->run();