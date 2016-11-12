<?php 

$configs = [
    'cleanWordpressHeader' => true,
    'cleanWordpressQueries' => true,
    'doGoogleAnalytics' => false,
    'redirectToTarget' => false,
    'minifiedAssets' => false,
    'useCache' => false,
    'debugSql' => true,
    'facebook' => [
        'appId' => '1622741558017693',
        'appSecret' => '6a811f57b35a260c2869bcdcdc79ac42',
        'pageId' => '1116642538395733'
    ],
    'twitter' => [
        'consumerKey' => 'xrSiQE1sdy2Hq2VxEdvvIVftd',
        'consumerSecret' => '44Slw8kj2AqlQ0erTIyU5nAx8N5kqwsOxKd74C6cjxD3DMg5SL',
        'oauthToken' => '751721154856022016-9UNcRnUEWjwznSE9psRa0iwv73Mz76G',
        'oauthSecret' => 'Ivuf7n4ngjOLe7LflZLcFVmo9vjPxMlvcE7Erw7mtAKhn',
        'user' => 'honestideas'
    ]
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