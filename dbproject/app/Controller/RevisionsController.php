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
  		echo "<br>";
                echo "<br>";
                echo "<br>";
                echo "<br>";
			
		//$this->set('revisions',$this->Revision->findByNo(5500));
		if(!$no)
			throw new NotFoundException(_('Invalid post'));

		$revisions = $this->Revision->findByNo($no);
		if(!$revisions)
			throw new NotFoundException(_('Invalid Post'));

		if ($this->request->is('post') || $this->request->is('put'))
		{
			$this->Revision->no=$no;
			
			$this->request->data = array('Revision'=>Array ('no' => 5500, 'rev' => 12, 'material' => 9 ) );
			
			if($this->Revision->save($this->request->data))
			{
				
				$this->Session->setFlash(__('The user has been updated'));
				$this->redirect(array('action'=>'edit',$no));
			}
			else
			{
				$this->Session->setFlash(__('Unable to update your post.'));
			}
			
		}
		if (!$this->request->data )
		{
		 	$this->request->data = $revisions;
		} 
        }
    }



