<?php

class ModifyParasController extends AppController {
	public $helpers = array('Html', 'Form');

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

	public function index() {
		$this->loadModel('ModifyPara');
		$this->ModifyPara->ReadData(1);
		$this->set('data_countrys', $this->ModifyPara->find('all'));

		$this->ModifyPara->ReadData(2);
		$this->set('data_complexities', $this->ModifyPara->find('all'));
	}


	public function modify($tableid, $countryid) {
		$this->set('tableid', $tableid);

		$this->loadModel('ModifyPara');
		$this->ModifyPara->ReadData($tableid);

		//if ($tableid == 1) {$this->ModifyPara->deleteAll(array('1 = 1'));}

		if ($tableid == 1)
		{
			$data = $this->ModifyPara->findById($countryid);
			if (!$data) {
				throw new NotFoundException(__('Invalid data'));
			}
			if ($this->request->is(array('post', 'put'))) {
				$this->ModifyPara->id = $countryid;
				if ($this->ModifyPara->save($this->request->data)) {
					$this->Session->setFlash(__('Your data has been updated.'));
					return $this->redirect(array('action' => 'index'));
				}
				$this->Session->setFlash(__('Unable to update your data.'));
			}
			if (!$this->request->data) {
				$this->request->data = $data;
			}
		}
		else if ($tableid == 2)
		{
			if ($this->request->is('post')) 
			{
				$this->ModifyPara->create();
				if ($this->ModifyPara->save($this->request->data)) 
				{
					$this->Session->setFlash(__('Your Modify Parameter has been saved.'));
					return $this->redirect(array('action' => 'index'));
				}
				$this->Session->setFlash(__('Unable to add your Parameter.'));
			}
		}
	}

}
?>
