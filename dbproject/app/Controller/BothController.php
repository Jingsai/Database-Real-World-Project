<?php
class BothController extends AppController
{
	public $helpers = array('Html', 'Form');
	public $uses=array('Post','Revision');	
	public function index()
	{
//		$both= $this->Post->Revision->find('all');
//		print_r($both);
	}
	



public function isAuthorized($user)
{
        return true;
}

public function beforeFilter()
{
	$this->Auth->allow();
}
}

?>
