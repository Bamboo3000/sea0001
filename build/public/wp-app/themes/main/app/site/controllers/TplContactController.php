<?php
require_once __DIR__ . '/TplFormController.php';

/**
 * Class HomeController
 *
 * @author Mwayi Dzanjalimodzi <mwayi@honestideas.co.uk>
 */
class TplContactController extends TplFormController
{

    /**
     * @inheritDoc
     */
    public function setUp()
    {
        parent::setUp();

        // $this->form->text('name')->setLabel('Name')->setRequired(true);
        // $this->form->text('email')->setLabel('Email')->setRequired(true);
        // $this->form->text('telephone')->setLabel('Telephone');
        // $this->form->textarea('message')->setLabel('Message')->setRequired(true);

    }

}