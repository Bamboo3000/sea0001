<?php

/**
 * Breadcrumb Component
 *
 * @author Mwayi Dzanjalimodzi
 */
class BreadcrumbComponent extends \Foundation\Component
{   
    /**
     * @var array|false The breadcrumb
     */
    protected $breadcrumb = false;

    /**
     * Component constructor.
     *
     * @param \Foundation\Controller $controller
     * @param array $parameters contains an array passed into the \Foundation\Controller::component
     */
    public function __construct(\Foundation\Controller $controller, array $parameters)
    {
        parent::__construct($controller, $parameters);

        $this->breadcrumb = $this->getBreadcrumb();
    }

    /**
     * Get breadcrumb
     *
     * Rossdales is split into two sites under the same domain; Rossdales vets & Rossdales labs.
     * When in the Labs section the breadcrumb must point home to the Lab home.
     *
     * @return array|false The array of the breadcrumb or false on failure
     */
    protected function getBreadcrumb()
    {
        $home = (object)['link' => '/', 'title' => 'Home', 'is_link' => true];

        if($this->controller instanceof \LabDocController) {
            $home->link = $this->application->config('companies.lab.link');
            return array_merge([$home], $this->controller->getBreadcrumb());
        }

        if($this->controller instanceof \CustomTeamDetailController) {
            //$home->link = $this->application->config('companies.lab.link');
            return array_merge([$home], $this->controller->getBreadcrumb());
        }
        
        if(is_search()) {
            return [$home, (object)['link' => '/', 'title' => 'Search', 'is_link' => true]];
        }

        if(is_404()) {
            return [$home, (object)['link' => '/', 'title' => '404', 'is_link' => true]];
        }

        if(!$this->controller->post_parent && $this->application->service('request')->getPath() !== '/') {
            return [$home, (object)['link' => '/', 'title' => $this->controller->post_title, 'is_link' => true]];
        }

        if(($breadcrumb = $this->controller->helper('pages')->getBreadcrumb())) {
            if($this->controller->isLab()) {
                array_shift($breadcrumb);
                $home->link = $this->application->config('companies.lab.link');
            }
            return array_merge([$home], $breadcrumb);
        }
        return false;
    }

}