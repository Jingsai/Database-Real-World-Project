<?php
class RevisionsController extends AppController{
        public $helpers = array('Html', 'Form');
        public function index(){
                $this->set('posts', $this->Post->find('all'));
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
         public function edit($NO=null) 
	{
		
		$this->set('revisions',$this->Revision->findByNO($NO);
        }
            $this->Session->setFlash(__('Unable to update your post.'));
        }
    }

}


