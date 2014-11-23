<?php
class RevisionsController extends AppController{
	

	public $components=array('Search.Prg','Paginator');


	public $uses = array(
			'Revision',
			'Tagnumber');
	

	public $paginate = array(
                'limit' => 2,
                'order' => array(
                        'Revision.no' => 'asc'
                )
        );

       // public $helpers = array('Html', 'Form');
        public function index()
	{
		//xin yang
		//2014.11.22 
 		//search and view the combined data from two tables in one page, : )
			
		$this->Prg->commonProcess();
       		$this->Paginator->settings['conditions'] = $this->Revision->parseCriteria($this->Prg->parsedParams());
                $datas = $this->Paginator->paginate();	
		
		
		foreach ($datas as $key => $val){ 		
		
                $tagnumbers = $this->Tagnumber->findByNo($val['Revision']['no']);

		//print_r($tagnumbers);	
		
		if(empty($tagnumbers))
		{
	
                        $datas[$key]['Revision']['Description'] = "";
			$datas[$key]['Revision']['SubCategory'] = "";
			
		}	
		else
		{		
			$datas[$key]['Revision']['Description'] = $tagnumbers['Tagnumber']['DESCRIPTION'];			
			$datas[$key]['Revision']['SubCategory'] = $tagnumbers['Tagnumber']['SubCategory'];			
	               // print_r($datas);
                       // return false;
               }
		
		}
			
	
		//print_r($datas);

      		$this->set('revisions',$datas);
      		//$this->set('revisions', $this->Paginator->paginate());
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



