<?php
class RevisionsController extends AppController{
	

	public $components=array('Search.Prg','Paginator');


	public $uses = array('Revision','Tagnumber','Tagmembername');
	//public $uses = array('Revision','Tagmembername');
	//public $uses = array('Revision');

	public $paginate = array(

		'Revision' => array(
			'limit' => 2,
			'order' => array(
				'Revision.no' => 'asc'
				)
			),
		
		'Tagnumber' => array(
			'limit' => 2,
			'maxLimit' => 100
			)
		);


	public function index()
	{
	
		$datas = $this->Paginator->paginate();	
		$this->set('revisions',$datas);	
		
		$params = $this->request->data;

		if (!empty($params))
		{		
			/*$_memberid=$this->Tagmembername->find('all', array( 'conditions' => array(
				                           'Tagmembername.Name' => $params['Revision']['Name'])));
			$memberid = $_memberid[0]['Tagmembername']['id'];*/


			$datas=$this->Revision->find('all', array(
				'contain' => array('Tagmembername'),
			//	'conditions' => array('Revision.no' => $params['Revision']['no'], 'Tagmembername.id' => $memberid)

		    'conditions' => array('Revision.revision_obsolete' => $params['Revision']['Obsolete'], 'Tagmembername.Name' => $params['Revision']['Name'])

			//'conditions' => array('Tagmembername.Name' => $params['Revision']['Name'])
			//'conditions' => array('Tagmembername.Name' => 'Dave White')
				));

			$this->set('revisions',$datas);	
		}
	}

	public function view( $id = null , $no = null){
		if (!$id) {
			throw new NotFoundException(__('Invalid post'));
		}

		$revisions= $this->Revision->findById($id);
		$tagnumbers = $this->Tagnumber->findByNo($no);
		
		if(empty($tagnumbers))
		{	
			$revisions['Revision']['Description'] = ""; 
			$revisions['Revision']['SubCategory'] = "";	
		}
		else
		{	
			$revisions['Revision']['Description'] = $tagnumbers['Tagnumber']['DESCRIPTION']; 
			$revisions['Revision']['SubCategory'] = $tagnumbers['Tagnumber']['SubCategory'];	
		}
		//print_r($revisions);
		//print_r($this->Revision->findByNo(5660));
                //print "<br>";
		//print_r($tagnumbers);

		if (!$revisions) {
			throw new NotFoundException(__('Invalid post'));
		}

		if ($this->request->is(array('post','put')))
		{

			$this->Revision->id=$id;			
		}

		if (!$this->request->data )
		{
			$this->request->data = $revisions;	
			//print_r($this->request->data);								
			//$tagnumbers = $this->Tagnumber->findByNo($no);
		 	//$this->request->data = $tagnumbers;
			//print_r($this->request->data = $tagnumbers);
		} 
		
	}
	public function edit($id=null) 
	{	

		//$this->set('revisions',$this->Revision->findByNo(5500));
		if(!$id)
			throw new NotFoundException(_('Invalid post'));

		$revisions = $this->Revision->findById($id);
		if(!$revisions)
			throw new NotFoundException(_('Invalid Post'));

		if ($this->request->is(array('post','put')))
		{
			$this->Revision->id=$id;			
			if($this->Revision->save($this->request->data))
			{
				
				$this->Session->setFlash(__('The user has been updated'));
//				return $this->redirect(array('action'=>'index'));
				$this->redirect(array('action'=>'edit',$id));
			}
		//	else
		//	{
			$this->Session->setFlash(__('Unable to update your post.'));
		//	}
			
		}
		if (!$this->request->data )
		{
			$this->request->data = $revisions;
		} 
	}
//XIXXI

//Jingsai allow action or deny action
	public function isAuthorized($user) {
		$group = json_decode(AuthComponent::user('group'));
        // $group = array(0 => 'tagmemebers')
		if (!empty($group)) {
			if (in_array("tagmembers", $group) || in_array("oe", $group)) {
           		 //admin can not add users;
            	//if($this->request->params['action']!='add'){
            		//return true;
            	//}
				return true;
			}
			if (in_array("oe", $group)) {
                //oe can not edit
				if ($this->request->params['action'] != 'edit') {
					return true;
				}
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
			if (in_array("tagmembers", $group) || in_array("oe", $group)){
				$this->Auth->allow('edit','index');
			}
			if(in_array("user", $group)){
				$this->Auth->allow('index');
			}
		}
	}
	










}



