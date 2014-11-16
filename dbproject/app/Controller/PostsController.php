<?php
class PostsController extends AppController{
	
	public $components = array('Search.Prg','Paginator');
	
	public $helpers = array('Html', 'Form');

	//public $components = array('Paginator');

	public $paginate = array(
		'limit' => 25,
		'order' => array(
			'Post.title' => 'asc'
		)
	);	
	
	public function index()
	{
        $this->Prg->commonProcess();
        $this->Paginator->settings['conditions'] = $this->Post->parseCriteria($this->Prg->parsedParams());
        $this->set('posts', $this->Paginator->paginate());	
	}

	
	//public function index(){
	//	$this->set('posts', $this->Post->find('all'));
	//}

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
	 public function add() {
        if ($this->request->is('post')) {
            $this->Post->create();
            if ($this->Post->save($this->request->data)) {
                $this->Session->setFlash(__('Your post has been saved.'));
                return $this->redirect(array('action' => 'index'));
            }
            $this->Session->setFlash(__('Unable to add your post.'));
        }
    }

}

