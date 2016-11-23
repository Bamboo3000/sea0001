<?php

/**
 * Class BaseController is the base controller from which all other controllers extend.
 *
 * @author Joe Green <joe.green@smrtr.co.uk>
 * @author Mwayi Dzanjalimodzi
 */
class BaseController extends \Foundation\Controller
{
    /**
     * @var null|string The page title override
     */
    protected $pageTitle = null;

    /**
     * Set up your controller.
     *
     * Remember to call parent::setup every time you implement this method in a controller.
     */
    public function setup()
    {
        parent::setup();
        $this->option = (object)$this->helper('sea0001.misc')->getGlobalOptions();
        $this->setAdjustedPostParams();
    }

    /**
     * Overload Dispatch to catch ajax requests
     *
     * @return void
     */
    public function dispatch()
    {   
        if($this->request->isAjax()) {
            $this->setConfig('turnOffDisplaySqlDebug', true);
            $this->processView();
            die($this->response->json($this->response->getBuffer()));
        }
        parent::dispatch();
    }

    /**
     * Override the page title (set to post title by default).
     *
     * @param string $pageTitle
     * 
     * @return void
     */
    public function setPageTitle($pageTitle)
    {
        $this->pageTitle = $pageTitle;
    }

    /**
     * Get the page title. 
     *
     * First looks at $this->pageTitle for an override, then falls back to page_title meta, 
     * then finally the post title.
     *
     * @return string The page title
     */
    public function getPageTitle()
    {
        $default = $this->page_title? : $this->post_title;
        return is_string($this->pageTitle) ? $this->pageTitle : $default;
    }

    /**
     * Get Author Name.
     *
     * @param integer $userId
     *
     * @return string|null The author name i.e. The display name inside wordpress
     */
    public function getAuthorName($userId = null)
    {
        if(($user = get_userdata($userId? : $this->post_author))) {
            return $this->helper('arrays')->get((array)$user->data, 'display_name');
        }
    }

    /**
     * Set the adjusted post params 
     *
     * @return void
     */
    public function setAdjustedPostParams() 
    {   
        $this->_post_parent = $this->post_parent;
        $this->_id          = $this->ID;
        $this->_post_name   = $this->post_name;
        $this->_post_title  = $this->post_title;
    }
}