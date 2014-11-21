<?php
//App::uses('AppController', 'Controller');

class StaticPagesController extends AppController {

	public function beforeFilter() {
   		 parent::beforeFilter();
   		 // Allow users to login, logout, view index.
    	$this->Auth->allow('index');
	}


	public function index(){
	}

}
