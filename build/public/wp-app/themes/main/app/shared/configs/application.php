<?php 

$configs = [
    'cleanWordpressHeader' => true,
    'cleanWordpressQueries' => true,
    'doGoogleAnalytics' => false,
    'redirectToTarget' => false,
    'minifiedAssets' => false,
    'useCache' => false,
    'debugSql' => true
];

if($this->isEnv('dev_jacob')) 
{
    $configs['displaySqlDebug'] = false;
}

if($this->isEnv('development')) 
{
    $configs['enforceHttps'] = false;
}

if($this->isEnv('production')) 
{
    $configs['doGoogleAnalytics'] = true;
    $configs['minifiedAssets']    = true;
    $configs['useCache']          = true;
    $configs['redirectToTarget']  = true;
    $configs['enforceHttps'] = true;
}

return $configs;