<?php
class PostsController extends AppController
{
	public $helpers = array('Html', 'Form');
	var $uses=array('Post','Revision');	
	public function index()
	{
		$this->set('posts', $this->Post->find('all'));
		$this->set('revisions', $this->Revision->find('all'));
//		$revisions=$this->Revision->find('all');
	//	print_r($revisions);
		
	}
	
	public function view($id = null)
	 {
		if (!$id)
		{
			throw new NotFoundException(__('Invalid post'));
		}
		$post = $this->Post->findById($id);
		if (!$post)
		{
			throw new NotFoundException(__('Invalid post'));
		}
		$this->set('post', $post);
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
