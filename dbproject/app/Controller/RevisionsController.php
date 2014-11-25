<?php
class RevisionsController extends AppController{
	
	public $components=array('Search.Prg','Paginator');
	public $uses = array(
			'Revision',
			'Tagnumber','Producttype','Country','Tagmembername','Appliedfo','Attachment');
	
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
	
        public function add()
        {
                //print_r(AuthComponent::user('username'));
                //print_r("<br>");
                $tempuserdata=$this->Tagmembername->findByName(AuthComponent::user('username'));
                //print_r($tempuserdata['Tagmembername']['id']);
                $this->request->data['Revision']['tagmembername_id']=$tempuserdata['Tagmembername']['id'];
                //return true;
                if ($this->request->is('post'))
                {

                        $this->Revision->create();
                        if ($this->Revision->save($this->request->data))
                        {
                                $this->Session->setFlash(__('Your post has been saved.'));
                                return $this->redirect(array('action' => 'index'));
                        }
                $this->Session->setFlash(__('Unable to add your post.'));
                }

        }






	public function index()
	{
	
		$datas = $this->Paginator->paginate();	
		$this->set('revisions',$datas);	
		
		$params = $this->request->data;
		if (!empty($params))
		{		
			$no = $params['Revision']['no'];
			$Obsolete = $params['Revision']['Obsolete'];
			$Name = $params['Revision']['Name'];
			$rev = $params['Revision']['Rev'];
			if (empty($no) && $no !== '0') { $no = '%'; }
			if (empty($Obsolete) && $Obsolete !== '0') { $Obsolete = '%'; }
			if (empty($Name) && $Name !== '0') { $Name = '%'; }
			if (empty($rev) && $rev !== '0') { $rev = '%'; }
			$datas=$this->Revision->find('all', array(
				'contain' => array('Tagmembername'),
			    'conditions' => array('Revision.revision_obsolete LIKE' => $Obsolete, 
			    	                  'Tagmembername.Name LIKE' => $Name,
                                      'Revision.no LIKE' => $no,
                                      'Revision.rev LIKE' => $rev)));
			$this->set('revisions',$datas);	
		}
	}
	
	public function getProMulti($prottype=NULL)
	{
		$promulti=$this->Producttype->findByProducttype($prottype);
		return $promulti['Producttype']['Multiplyer'];
	}
      public function view( $id = null , $no = null){
                if (!$id) {
                        throw new NotFoundException(__('Invalid post'));
                }
                $revisions= $this->Revision->findById($id);
                $tagnumbers = $this->Tagnumber->findByNo($no);
		$countries=$this->Country->find('all');
		$products=$this->Producttype->find('all');
		$applied=$this->Appliedfo->findByNo($no);
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
		$revisions['Revision']['installcost']=$revisions['Revision']['material']+$revisions['Revision']['LABOR']+$revisions['Revision']['Engineering']; 
		$revisions['Revision']['hvlusa']=$revisions['Revision']['installcost']*$countries[0]['Country']['USA']*$this->getProMulti('HVL');
		$revisions['Revision']['hvlcanada']=$revisions['Revision']['installcost']*$countries[0]['Country']['Canada']*$this->getProMulti('HVL');
		$revisions['Revision']['hvlmexico']=$revisions['Revision']['installcost']*$countries[0]['Country']['Mexico']*$this->getProMulti('HVL');
		
		$revisions['Revision']['hvlccusa']=$revisions['Revision']['installcost']*$countries[0]['Country']['USA']*$this->getProMulti('HVL/CC');
		$revisions['Revision']['hvlccanada']=$revisions['Revision']['installcost']*$countries[0]['Country']['Canada']*$this->getProMulti('HVL/CC');
		$revisions['Revision']['hvlccmexico']=$revisions['Revision']['installcost']*$countries[0]['Country']['Mexico']*$this->getProMulti('HVL/CC');
		
		$revisions['Revision']['metalusa']=$revisions['Revision']['installcost']*$countries[0]['Country']['USA']*$this->getProMulti('Metal Clad');
		$revisions['Revision']['metalcanada']=$revisions['Revision']['installcost']*$countries[0]['Country']['Canada']*$this->getProMulti('Metal Clad');
		$revisions['Revision']['metalmexico']=$revisions['Revision']['installcost']*$countries[0]['Country']['Mexico']*$this->getProMulti('Metal Clad');
		
		$revisions['Revision']['mvusa']=$revisions['Revision']['installcost']*$countries[0]['Country']['USA']*$this->getProMulti('MVMCC');
		$revisions['Revision']['mvcanada']=$revisions['Revision']['installcost']*$countries[0]['Country']['Canada']*$this->getProMulti('MVMCC');
		$revisions['Revision']['mvmexico']=$revisions['Revision']['installcost']*$countries[0]['Country']['Mexico']*$this->getProMulti('MVMCC');
		if($applied)
		{
			$revisions['Revision']['appliedfono']=$applied['Appliedfo']['FO Number Applied To'];
			$revisions['Revision']['notesengineer']=$applied['Appliedfo']['Notes to Next Engineer'];
		}
		else
		{
			$revisions['Revision']['appliedfono']="";
			$revisions['Revision']['notesengineer']="";
		}
	//	print_r($revisions['Revision']['installcost']*$countries['Country']['USA']*$this->getProMulti('HVL'));	
		//print_r($revisions);
		//print_r($this->Revision->findByNo(5660));
                //print "<br>";
		//print_r($tagnumbers);
		$tag=$this->Tagmembername->findById($revisions['Revision']['tagmembername_id']);
		$revisions['Revision']['tagmembername']=$tag['Tagmembername']['Name'];
		App::uses('CakeTime','Utility');
		$edate=$revisions['Revision']['DATE'];
		$emonth=$revisions['Revision']['price expiration'];
		$revisions['Revision']['DATE']=CakeTime::format($edate);
		$revisions['Revision']['expprice']=CakeTime::format($edate.'+'.$emonth.'months');
		
		
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
	//	$this->set('producttypes',$products);

//THIS IS FOR ADDING ATTACHMENT===============================================================
               //print_r( $this->request->data['Attachment']['Attachments']);
                $this->request->data['Attachment']['tag']=$revisions['Revision']['no'];
              // print_r( $this->request->data['Attachment']['tag']);
                //return true;
                if ($this->request->is('post'))
                {

                        $this->Attachment->create();
                        if ($this->Attachment->save($this->request->data))
                        {
                                $this->Session->setFlash(__('Your post has been saved.'));
                                return $this->redirect(array('action' => 'index'));
                        }
                $this->Session->setFlash(__('Unable to add your post.'));
                }

//ADDING ATTACHMENT FINISHES HERE
		return $revisions;
		
	}
         public function edit($id=null,$no=null) 
	{	

		
		$editdata=$this->view($id,$no);
		//print_r($editdata);
     
		if ($this->request->is(array('post','put')))
		{
			$fields = array('no', 'rev', 'Lead Time', 'material', 'INST COST', 'price expiration', 'Engineering','LABOR', 'expprice', 'hvl', 'HVL/CC','Metal Clad','MVMCC');
			//print_r($this->request->data);
            $rdata = array('Revision'=>array());
            $ischange = 0;
            foreach ($this->request->data['Revision'] as $key => $val){
            	if(in_array($key, $fields) && $editdata['Revision'][$key]!= $val){
            		$ischange ++;
            		if ($key != 'expprice') {
            			$rdata['Revision'][$key] = $val;
            		}else{
            			$rdata['Revision']['price expiration'] = $val;
            		}
            	}   
            }
            /*$rdata['Revision']['hvl'] = $this->request->data['Revision']['hvl'];
            $rdata['Revision']['HVL/CC'] = $this->request->data['Revision']['HVL/CC'];
            $rdata['Revision']['Metal Clad'] = $this->request->data['Revision']['Metal Clad'];
            $rdata['Revision']['MVMCC'] = $this->request->data['Revision']['MVMCC'];*/
           // print_r($rdata);
            //print_r("<br>");

           // echo $ischange;
            if ($ischange !=0 ) {
				$old_revision = $this->Revision->findById($id);
                foreach ($old_revision['Revision'] as $key => $val) {
            		if ($key !='id' && $key != 'rev' && $key != 'INST COST' && $key != 'DATE'){
            			if(!array_key_exists($key, $rdata['Revision'])){
            				$rdata['Revision'][$key] = $val;
            			}
            		}
            		if($key == 'rev'){
                        $rdata['Revision']['rev'] = $old_revision['Revision']['rev']+1;
                        //echo $old_revision['Revision']['rev'];
            		}
           		}
           		 $rdata['Revision']['INST COST'] = $rdata['Revision']['material']+$rdata['Revision']['LABOR']+$rdata['Revision']['Engineering'];
            }
           /* $rdata['Revision']['INST COST'] = $rdata['Revision']['material']+$rdata['Revision']['LABOR']+$rdata['Revision']['Engineering'];*/

            App::uses('CakeTime','Utility');
            $rdata['Revision']['DATE'] = CakeTime::format('+0 days', '%Y-%m-%d %H:%M:%S');
            $authname = $this->Tagmembername->findByName(AuthComponent::user('username'));
        	$rdata['Revision']['tagmembername_id'] = $authname['Tagmembername']['id'];
        	//print_r("<br>");
            //print_r($rdata);
           //return true;
             $this->Revision->create();
             $this->Revision->id = false;
           if ($this->Revision->save($rdata)) {
            	$this->Session->setFlash(__('The tag has been updated'));
            	return $this->redirect(array('action' => 'index'));
            }else
		    {
				$this->Session->setFlash(__('Unable to update your post.'));
			}



            //return true;        
			/*$this->Revision->id=$id;			
			
			if($this->Revision->save($this->request->data))
			{
				
				$this->Session->setFlash(__('The user has been updated'));
//				return $this->redirect(array('action'=>'index'));
				$this->redirect(array('action'=>'edit',$id));
			}
		//	else
		//	{
			$this->Session->setFlash(__('Unable to update your post.'));
		//	}*/
			
		}
		if (!$this->request->data )
		{
		 	$this->request->data = $editdata;
		} 
        }
//XIXXI
//Jingsai allow action or deny action
    public function isAuthorized($user) {
        $group = json_decode(AuthComponent::user('group'));
        // $group = array(0 => 'tagmemebers')
        if (!empty($group)) {
        	if (in_array("tagmembers", $group)) {
            	return true;
            }
            if (in_array("user", $group) || in_array("oe", $group)) {
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
            if (in_array("tagmembers", $group)){
                $this->Auth->allow('edit','index','view');
            }
            if(in_array("user", $group)  || in_array("oe", $group)){
                $this->Auth->allow('index','view');
            }
        }
    }
	
}
