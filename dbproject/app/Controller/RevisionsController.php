<?php
class RevisionsController extends AppController{
       // public $helpers = array('Html', 'Form');
        public function index(){
        }
        public function view( $id=null ){
                if (!$id) {
                        throw new NotFoundException(__('Invalid post'));
                }
                $post = $this->Post->findById($id);
        if (!$post) {
            throw new NotFoundException(__('Invalid post'));
        }
        $this->set('post', $post);
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
				return $this->redirect(array('action'=>'index'));
		///		$this->redirect(array('action'=>'edit',$id));
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
    }



