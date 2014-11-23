<?php
class LogsController extends AppController {
	    public function isAuthorized($user) {
            $group = json_decode(AuthComponent::user('group'));
            if (!empty($group)) {
                if (in_array("admin", $group)) {
                    return true;
                }
            }       
            $this->Session->setFlash(__('Action deny.'));
            $this->redirect($this->Auth->redirectUrl());
            return false;      
    }
     
    public function beforeFilter() {
        parent::beforeFilter();
        if(AuthComponent::user('group')){
            $group = json_decode(AuthComponent::user('group'));
            if (in_array("admin", $group)){
                $this->Auth->allow('index');
            }else{
                $this->Auth->deny('index');
            }
        }
    }

     public $paginate = array(
        'limit' => 25,
        'conditions' => array('act' => 'login'),
        'order' => array('Log.time' => 'asc' ) 
    );

	public function index(){
  		$this->paginate = array(
            'limit' => 6,
            'order' => array('Log.time' => 'desc'),
            'conditions' => array('act' => 'login')    //show logs of action equals login
        );
        $logs = $this->paginate('Log');
        //print_r($logs);
        $this->set(compact('logs'));
	}
}