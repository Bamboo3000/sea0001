<?php 

/**
 * Testimonials Component
 *
 * Collection component
 *
 * @author Jakub Pabis
 */
class Sea0001TestimonialsComponent extends \Foundation\Component
{   
	/**
     * @var array Defaults
     */
    protected $defaults = [
        'summary', 
        'author', 
        'type',
        'home'
    ];

    /**
     * @var array The items to display
     */
    protected $items = [];

    /**
     * @var integer Total items
     */
    protected $total = 10;

    /**
     * @var array|false Only display the markup if there are items
     */
    protected $display = false;

    /**
     * Component constructor.
     *
     * @param \Foundation\Controller $controller
     * @param array $parameters contains an array passed into the \Foundation\Controller::component
     */
    public function __construct(\Foundation\Controller $controller, array $parameters)
    {
        parent::__construct($controller, $parameters);
        $this->setCollection();
    }

    /**
     * Set the collection up
     *
     * @return void
     */
    public function setCollection()
    {
    	$this->items = $this->application->helper('posts')->getSortableMeta('testimonials', $this->defaults);
       
    	if($this->total = count($this->items)) {
    		$this->display = true;
    	}
    }
}