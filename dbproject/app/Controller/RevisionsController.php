<?php
class RevisionsController extends AppController{
        public $helpers = array('Html', 'Form');
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
         public function edit($no=null) 
	{		
		//$this->set('revisions',$this->Revision->findByNo(5500));
	     $revisions = $this->Revision->findByNo(5500);
	 $this->request->data = $revisions; 
		$this->Session->setFlash(__('Unable to update your post.'));
        }
    }



