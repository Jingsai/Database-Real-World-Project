<?php
class PrintsController extends AppController {
	public function isAuthorized($user) {
    	return true;        
    }
     
    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow();
    }
	 public function  printpage(){

	 }
}