<?php
class RevisionsController extends AppController{
	
	public $components=array('Search.Prg','Paginator');

	public $paginate = array(
                'limit' => 25,
                'order' => array(
                        'Revision.no' => 'asc'
                )
        );

       // public $helpers = array('Html', 'Form');
        public function index()
	{
		$this->Prg->commonProcess();
       		$this->Paginator->settings['conditions'] = $this->Revision->parseCriteria($this->Prg->parsedParams());
      		$this->set('revisions', $this->Paginator->paginate());	
        }
        public function view( $id=null ){
                if (!$id) {
                        throw new NotFoundException(__('Invalid post'));
                }
                $revisions= $this->Revision->findById($id);
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



