<?php

/**
 * Footermenu Component
 *
 * Enable a page to display a side nav based upon the page hierarchy 
 *
 * @author Mwayi Dzanjalimodzi <mwayi.honestideas.co.uk>
 */
class FootermenuComponent extends \Foundation\Component
{   
    /**
     * @var string The footernav.
     */
    protected $menu;

    /**
     * @var boolean Should we display the menu?
     */
    protected $display = true;

    /**
     * Component constructor.
     *
     * @param \Foundation\Controller $controller
     * @param array $parameters contains an array passed into the \Foundation\Controller::component
     */
    public function __construct(\Foundation\Controller $controller, array $parameters)
    {
        parent::__construct($controller, $parameters);

        $this->setMenu();
    }


    public function dispatch()
    {
        //parent::dispatch();
        echo $this->menu;
    }

    /**
     * Set Menu
     *
     * @return void
     */
    protected function setMenu()
    {
        $this->menu = $this->application->helper('menu')->setMenu('footer-menu')->loop([
            'openGroup' => function($items, $depth) {
                require __DIR__ . '/open-group.php';
            },
            'closeGroup' => function($items, $depth) {
                return "\n</ul>";
            },
            'openItem' => function($item, $depth) {
                require __DIR__ . '/open-item.php';
            },
            'closeItem' => function($item, $depth) {
                return "\n</li>";
            }
        ]);
    }
}