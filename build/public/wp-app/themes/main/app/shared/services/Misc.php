<?php

namespace Services;

/**
 * Misc helpers
 *
 * @author Mwayi Dzanjalimodzi <mwayi@smrtr.co.uk>
 *
 * @package Foundation\Helper\Opa0007\Team
 */
class MiscHelper extends \Foundation\Helper\AbstractHelper
{
    /**
     * Get Custom Post urls
     *
     * @param   \WP_Post as $post
     * @param   string The scope
     *
     * @return  boolean
     */
    public function getCustomPostUrl(\WP_Post $post, $scope = null) 
    {   
        if(!isset($post->meta)) {
            $post->meta = $this->helper('posts')->getPostMeta($post->ID);
        }

        $url = get_bloginfo('url');

        $articleType = $this->helper('arrays')->get($post->meta, 'scope_type', 'article');

        switch($post->post_type) {
            case 'article':
            $permalink = ($scope === 'vet'? 'news-hub': 'rossdales-laboratories/news-hub') . '/' . $articleType;
            break;
            case 'event':
            $permalink = ($scope === 'vet'? 'news-hub': 'rossdales-laboratories/news-hub') . '/' . $post->post_type;
            break;
            case 'team':
            $permalink = ($scope === 'vet'? 'about-us/our-team': 'rossdales-laboratories/about-us/our-team');
            break;
            default:
            $permalink = ($scope === 'vet'? $post->post_type: 'rossdales-laboratories') . '/' . $articleType;
            break;
        }

        return $url . '/' . $permalink . '/' . $post->post_name;
    }

    /**
     * Conver texts to links
     *
     * @param   string $text
     *
     * @return  string
     */
    public function textToLinks($text)
    {
        $regex = "/(http|https|ftp|ftps)\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\/\S*)?/";
        if(preg_match($regex, $text, $url)) {
            return preg_replace($regex, "<a href=\"{$url[0]}\">{$url[0]}</a> ", $text);
        }
        return $text;
    }

    /**
     * Is device checks to see if we are on primarily mobile devices.
     *
     * @param   string|array $device. Values to pass in are mobile, tablet
     *
     * @return  boolean
     */
    public function isDevice($devices, $operator = 'or')
    {
        $device = 'is' . $this->helper('strings')->pascalCase(ucwords(implode(" $operator ", (array)$devices)));
        // Mobile detection
        $detect = new \Mobile_Detect;

        if(!$this->service('session')->has('device')) {
            $isMobile = $detect->isMobile();
            $isTablet = $detect->isMobile();
            $config = [
                'isMobile' => $isMobile && !$isTablet, 
                'isTablet' => $isTablet,
                'isMobileOrTablet' => $isTablet || $isMobile,
                'isMobileAndTablet' => $isTablet && $isMobile,
                'isDesktop' => !$isTablet && !$isMobile
            ];
            $this->service('session')->set('device', $config);
        }

        return (boolean)$this->service('session')->get('device.' . $device);
    }

    /**
     * The global options
     *
     * @return  array
     */
    public function getGlobalOptions()
    {
        $keys = array_keys((array)(require $this->application->path('admin.configs', 'options.php')));
        $array = [];
        foreach ($keys as $key) {
            $array[$key] = get_option($key);
        }
        return $array;
    }

    /**
     * Get Top Category
     *
     * @param integer $postId
     *
     * @return void
     */
    public function getTopCategory($postId) 
    {   
        $categories = (array)$this->helper('posts')->getPostCategory($postId, ['blog-category']);
        $top = array_shift($categories);
        if($top) {
            return $top->name;
        }
        return null;
    }

}
