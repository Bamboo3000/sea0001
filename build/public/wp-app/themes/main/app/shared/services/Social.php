<?php

namespace Services;

use Abraham\TwitterOAuth\TwitterOAuth;

/**
 * The Social helper class.
 *
 * A very lightweight helper class for social aspects
 *
 * @author Mwayi Dzanjalimodzi <mwayi@smrtr.co.uk>
 *
 * @package Foundation\Helper\Social
 */
class SocialHelper extends \Foundation\Helper\AbstractHelper
{
	/**
	 * Facebook graph request
	 *
	 * @param array $array
	 *
	 * @return array
	 */
	public function getFacebookPosts($limit = 10)
	{
  		$endpoint = sprintf(
        	'https://graph.facebook.com/%s/posts?access_token=%s|%s&fields=id,picture,type,from,message,status_type,object_id,name,caption,description,link,created_time&limit=%s', 
        	$this->application->config('facebook.pageId'), 
        	$this->application->config('facebook.appId'), 
        	$this->application->config('facebook.appSecret'), 
        	$limit
        );

        $response = wp_remote_get($endpoint, [
            'timeout' => 10,
            'headers' => ['Accept-Encoding' => '' ],
            'sslverify' => false
        ]); 

        if( is_wp_error( $response ) ) {
            return false;
        }    

        return json_decode( wp_remote_retrieve_body($response) );
	}

    /**
     * Twitter API request
     *
     * @param integer limit
     *
     * @return array
     */
    public function getTwitterPosts($limit = 3)
    {
        $connection = new TwitterOAuth(
            $this->application->config('twitter.consumerKey'),
            $this->application->config('twitter.consumerSecret'),
            $this->application->config('twitter.oauthToken'),
            $this->application->config('twitter.oauthSecret')
        );

        $twitteruser = $this->application->config('twitter.user');

        return $connection->get("statuses/user_timeline", [
            'count' => $limit,
            'screen_name' =>  $this->application->config('twitter.user')
        ]);
    }
}
