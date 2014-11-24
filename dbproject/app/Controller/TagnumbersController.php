<?php
class TagnumbersController extends AppController
{
	public $helpers = array('Html', 'Form');
	
	public function index()
	{
		$this->set('tagnumbers', $this->Tagnumber>find('all'));
//		$revisions=$this->Tagnumber->find('all');
	//	print_r($tagnumbers);
		
	}
	
	public function view($id = null)
	 {
		if (!$id)
		{
			throw new NotFoundException(__('Invalid post'));
		}
		$tagnumbers = $this->Tagnumber->findById($id);
		if (!$tagnumbers)
		{
			throw new NotFoundException(__('Invalid post'));
		}
		if($this->request->is(array('tagnumber','put')))
		{
			$this->Tagnumber->id = $id;
		}
		if(!$this->request->data)
		{
			$this->request->data =  $tagnumbers;
		}
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
