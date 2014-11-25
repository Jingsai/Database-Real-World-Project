<?php
class UsersController extends AppController {
    var $uses = array('User','Log', 'Tagmembername');
    public $paginate = array(
        'limit' => 25,
        'conditions' => array('status' => '1'),
        'order' => array('User.username' => 'asc' ) 
    );
    public function isAuthorized($user) {
       // parent::isAuthorized();
            $group = json_decode(AuthComponent::user('group'));
            if (!empty($group)) {
                if (in_array("admin", $group)) {
                     //admin can not add users;
                       //if($this->request->params['action']!='add'){
                            //return true;
                        //}
                    return true;
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
            if (in_array("admin", $group)){
                $this->Auth->allow('add','edit','delete','index');
            }else{
                $this->Auth->deny('add','edit','delete','index');
            }
        }
    }
     
 
 
    public function login() {
        App::uses('CakeTime', 'Utility');
        if($this->Session->check('Auth.User')){
            return $this->redirect($this->Auth->redirectUrl());
        }
        // if we get the post information, try to authenticate
        if ($this->request->is('post')) {
            if ($this->Auth->login()) {
                //write login log
                $logdata['Log']['username'] = $this->request->data['User']['username'];
                $logdata['Log']['ip'] = $this->RequestHandler->getClientIP(false);
                if ($logdata['Log']['ip'] =='::1') {
                    $logdata['Log']['ip'] = '127.0.0.1'; //::1 is local host in IPv6
                }
                $logdata['Log']['time'] = CakeTime::format(time(), '%Y-%m-%d %H:%M:%S');
                $logdata['Log']['act'] = 'login';
                $this->Log->create();
                $this->Log->save($logdata);

                $this->Session->setFlash(__('Welcome, '. $this->Auth->user('username')),
                    'default',array('class'=>'font-size:10em;color:green;'));
                $this->redirect($this->Auth->redirectUrl());
            } else {
                $this->Session->setFlash(__('Invalid username or password'));
            }
        } 
    }
 
    public function logout() {
        $this->redirect($this->Auth->logout());
    }
 
    public function index() { 
        $this->paginate = array(
            'limit' => 6,
            'order' => array('User.username' => 'asc' )
        );
        $users = $this->paginate('User');
        $this->set(compact('users'));
    }
 
 
    public function add() {
       //echo  AuthComponent::user('group');
        //test
        /*$this->request->data = array(
                'User' => array(
                    'username' => 'jingsai',
                    'email' => 'example@gmail.com',
                    'password' => 'jingsaipw',
                    'password_confirm' => 'jingsaipw',
                    'group' =>array(
                        '0'=>'admin', 
                        '1'=>'tagmembers'
                        )
                    )
            );*/
        $maxid = 0;
        $tagmember_ids = $this->Tagmembername->find('all');
        foreach ($tagmember_ids as $tagmember_id) {
            if ( $maxid < $tagmember_id['Tagmembername']['id'] );
            {
                $maxid = $tagmember_id['Tagmembername']['id'];
            }
        }
        $maxid = $maxid + 1;

        if ($this->request->is('post')) {
            if (empty($this->request->data['User']['group'])) {
                $this->Session->setFlash(__('You must select at least one group'));
                return false;
            }
            

            $this->request->data['User']['group'] = json_encode($this->request->data['User']['group']); 
            $this->User->create();
            if ($this->User->save($this->request->data)) {
                if (in_array("tagmembers", json_decode($this->request->data['User']['group'])))
                {
                    $isuser = $this->Tagmembername->findByName($this->request->data['User']['username']);
                    if (empty($isuser))
                    {
                        $this->Tagmembername->save(array('Tagmembername'=>array(
                            'Name'=>$this->request->data['User']['username'],
                            'id'=>$maxid)));
                    }
                }
            //if ($this->User->saveAll($this->request->data,array('atomic' => false, 'deep' =>true))) {
                $this->Session->setFlash(__('The user has been created'));
               // print_r(here);
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The user could not be created. Please, try again.'));
            }   
        }
    }
 
    public function edit($id = null) {
            if (!$id) {
                $this->Session->setFlash('Please provide a user id');
                $this->redirect(array('action'=>'index'));
            }
 
            $user = $this->User->findById($id);
            $user['User']['group'] = json_decode($user['User']['group']);
            if (!$user) {
                $this->Session->setFlash('Invalid User ID Provided');
                $this->redirect(array('action'=>'index'));
            }
 
            $maxid = 0;
            $tagmember_ids = $this->Tagmembername->find('all');
            foreach ($tagmember_ids as $tagmember_id) {
                if ( $maxid < $tagmember_id['Tagmembername']['id'] );
                {
                    $maxid = $tagmember_id['Tagmembername']['id'];
                }
            }
            $maxid = $maxid + 1;

            if ($this->request->is('post') || $this->request->is('put')) {
                $this->User->id = $id;
                $this->request->data['User']['group'] = json_encode($this->request->data['User']['group']);
                if ($this->User->save($this->request->data)) {
                     if (in_array("tagmembers", json_decode($this->request->data['User']['group'])))
                {
                    $isuser = $this->Tagmembername->findByName($this->request->data['User']['username']);
                    if (empty($isuser))
                    {
                        $this->Tagmembername->save(array('Tagmembername'=>array(
                            'Name'=>$this->request->data['User']['username'],
                            'id'=>$maxid)));
                    }
                }
                    $this->Session->setFlash(__('The user has been updated'));
                    $this->redirect(array('action' => 'index'));
                }else{
                    $this->Session->setFlash(__('Unable to update your user.'));
                }
            }
            
            if (!$this->request->data) {
                $this->request->data = $user;
            }
    }
 
    public function delete($id = null) {
        if (!$id) {
            $this->Session->setFlash('Please provide a user id');
            $this->redirect(array('action'=>'index'));
        }
         
        $this->User->id = $id;
        if (!$this->User->exists()) {
            $this->Session->setFlash('Invalid user id provided');
            $this->redirect(array('action'=>'index'));
        }
        //$numAdmin = $this->User->find('count', array('conditions' => array('User.Type' => 'admin')));
        $user = $this->User->findById($id);
        /*if ($numAdmin <= 1 && $user['User']['type'] == 'admin') {
            $this->Session->setFlash('Failed to delete user. You are the only Admin');
            return $this->redirect(array('action' => 'index'));
        }*/
        $group = json_decode($this->Auth->user('group'));
        //if ($this->Auth->user('type') == 'admin' && $this->User->delete($id)) {
        if (in_array("admin", $group) && $this->User->delete($id)) {
            $this->Session->setFlash('User has been deleted');
        }else{
            $this->Session->setFlash('Failed to deleted user');
        }
        
       
        $this->redirect(array('action' => 'index'));
    }
 
}
