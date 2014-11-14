<?php
//App::uses('AppController', 'Controller');

class StaticPagesController extends AppController {

	public function beforeFilter() {
    parent::beforeFilter();
    // Allow users to register and logout.
    $this->Auth->allow('index');
	}


	public function index(){
	}

}
