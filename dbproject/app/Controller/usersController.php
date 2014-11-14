<?php
class UsersController extends AppController {

  public function login() {
    if ($this->request->is('post')) {
      // Validate pipeline request here
      $user = $this->User->findByUsername($this->request->data['User']['username']);
      if ($this->Auth->login()) {
        return $this->redirect(array('controller' => 'flights', 'action' => 'index'));
      }
      $this->Session->setFlash('Invalid username or password, try again', 'fail');
    }
  }

  public function add() {
    if($this->request->is('post')){
      $this->User->create();
      $data = $this->request->data;
      $csvData = $data['User']['csvPath'];
      unset($data['User']['csvPath']);
      if($this->User->uploadUsers($csvData))
      {
        $this->Session->setFlash('New users file submitted.', 'success');
        return $this->redirect(
          array('conroller' => 'users', 'action' => 'index'));
      }
      $this->Session->setFlash('Unable to add new users.','fail');
    }

  }

  public function delete($id) 
  {
 
    if($this->request->is('get'))
    {
      throw new MethodNotAllowedException();
    }
    
    //check if number of administrators
    $numAdmin = $this->User->find('count',array('conditions' => array('User.Type' => 'admin')));
    $user = $this->User->findById($id);
    //if attempting to delete the last admin. Dont delete. 
    if($numAdmin <= 1 && $user['User']['type'] == 'admin')
    {
      $this->Session->setFlash('Failed to delete user. You are the only Admin.','fail');
        return $this->redirect(
            array('controller' => 'users', 'action' => 'index'));
    }

    if($this->Auth->user('type') == "admin" && $this->User->deleteUser($id))
    {
      $this->Session->setFlash('User has been deleted.','success');

    }
    else
    {
      $this->Session->setFlash('Failed to delete user.','danger');
    }
    $this->redirect(array('controller' => 'users', 'action' => 'index'));

  }

  public function logout() {
    return $this->redirect($this->Auth->logout());
  }

  public function view($id = NULL){
    $user = $this->Auth->user();
    if(!$id) {
      throw new NotFoundException('Invalid user','fail');
    }
    if(!$user){
      $this->Session->setFlash('Please log in to use site.','fail');
      return $this->redirect(
          array('controller' => 'users', 'action' => 'login'));
    }
    if($user['id'] != $id && $user['type'] == 'student'){
      $this->Session->setFlash('Not authorized to view this user page.','fail');
      return $this->redirect(
          array('controller' => 'flights', 'action' => 'index'));
    }
    $this->set('user', $user);

    if($user['type'] == 'student'){
      $this->set('type', 0);
    } else if($user['type'] == 'teacher'){
      $this->set('type', 1);
    } else if($user['type'] == "maint"){
      $this->set('type', 2);
    } else if($user['type'] == 'admin'){
      $this->set('type', 3);
    }
  }

  public function edit($id = null){
    $numAdmin = $this->User->find('count',array('conditions' => array('User.Type' => 'admin')));

    App::uses('SimplePasswordHasher', 'Controller/Component/Auth');
    $this->User->id = $id;
    if (!$this->User->exists()) {
        throw new NotFoundException('Invalid user','fail');
    }

    //get number of User.Type == 'admin'
    if ($this->request->is('post') || $this->request->is('put')) {
      $user = $this->User->findById($id);
      if($this->Auth->user('type') != 'admin'){
        $this->User->set('type', $user['User']['type']);
      } 
      else if($numAdmin <= 1 && $user['User']['type'] == 'admin' && $this->request->data['User']['type'] != 3) //if last adimn stop edit
      {
        $this->Session->setFlash('Failed to change user type. You are the only Admin.','fail');
        return $this->redirect(
            array('controller' => 'users', 'action' => 'index'));
      }
      else {
        if($this->request->data['User']['type'] == 0){
          $this->User->set('type', 'student');
        } else if($this->request->data['User']['type'] == 1){
          $this->User->set('type', 'teacher');
        } else if($this->request->data['User']['type'] == 2){
          $this->User->set('type', 'maint');
        } else if($this->request->data['User']['type'] == 3){
          $this->User->set('type', 'admin');
        }
      }

      // If the password has changed update it
      if($this->request->data['User']['newPassword'] != ""){
        if($this->request->data['User']['newPassword'] == $this->request->data['User']['passwordConfirmation']){
          $passwordHasher = new SimplePasswordHasher();
          $this->User->set('password', $passwordHasher->hash($this->request->data['User']['newPassword']));
        } else {
          $this->Session->setFlash('The password and confirmation do not match','fail');
          return $this->redirect(array('controller' => 'flights', 'action' => 'index'));
        }
      }

      // Update name information if not blank
      if($this->request->data['User']['firstname'] != ""){
        $this->User->set('firstname', $this->request->data['User']['firstname']);
      }
      if($this->request->data['User']['lastname'] != ""){
        $this->User->set('lastname', $this->request->data['User']['lastname']);
      }

      // Save the changes
      if ($this->User->save()) {
          $this->Session->setFlash('The changes has been saved','success');
          return $this->redirect(array('controller' => 'flights', 'action' => 'index'));
      }
      $this->Session->setFlash('The user could not be saved. Please, try again.','fail');
    } else {
      $user = $this->User->findById($id);
      $this->request->data = $user;
      if(!$id) {
        throw new NotFoundException(__('Invalid user'));
      }
      if(!$user){
        $this->Session->setFlash('Please log in to use site.','fail');
        return $this->redirect(
            array('controller' => 'users', 'action' => 'login'));
      }
      if($this->Auth->user('id') != $id && $this->Auth->user('type') == 'student'){
        $this->Session->setFlash('Not authorized to view this user page.','fail');
        return $this->redirect(
            array('controller' => 'flights', 'action' => 'index'));
      }
      $this->set('user', $user);

    

      if($user['User']['type'] == 'student'){
        $this->set('type', 0);
      } else if($user['User']['type'] == 'teacher'){
        $this->set('type', 1);
      } else if($user['User']['type'] == "maint"){
        $this->set('type', 2);
      } else if($user['User']['type'] == 'admin'){
        $this->set('type', 3);
      }

      ClassRegistry::init('Flight');
      $flight = new Flight();
      $numAdmin = $this->User->find('count',array('conditions' => array('User.Type' => 'admin')));
      
      $userFlights = $flight->findAllByStudentid($user['User']['username']);
      $this->set('count', count($userFlights));
      $durationSum = 0;
      for ($i=0; $i < count($userFlights); $i++) { 
        $durationSum += $userFlights[$i]['Flight']['duration'];
      }
      $this->set('durationSum', $durationSum);
      if($user['User']['type'] != 'student'){
        $instructedFlights = $flight->findAllByInstructorid($user['User']['username']);
        $this->set('instructCount', count($instructedFlights));
        $instructionSum = 0;
        for ($i=0; $i < count($instructedFlights); $i++) { 
          $instructionSum += $instructedFlights[$i]['Flight']['duration'];
        }
        $this->set('instructionSum', $instructionSum);
      }
    }
  }

  public function index($page = null, $sort = null, $dir = null){
    
    if($page == null){
        $page = 1;
    }
    if($sort == null){
        $sort = "lastname";
    }
    if($dir == null){
        $dir = "asc";
    }
    $dirArray = array("firstname" => "", 
                             "lastname" => "",
                             "type" => "", 
                             "username" => "");
    if($dir == "asc"){
        $dirArray[$sort] = "desc";
    }
    $this->set('dir', $dir);
    $this->set('dirArray', $dirArray);
    $this->set('page', $page);
    $this->set('sort', $sort);
    
    if($this->Auth->user('type') == 'admin'){
      $this->set('count', ceil($this->User->find('count')/10));
      $this->set('users', $this->User->find('all', array(
                        'order' => array($sort => $dir),
                        'limit' => 10,
                        'page' => $page)));
    } else if($this->Auth->user('type') == 'teacher'){
      $this->set('count', ceil($this->User->find('count', 
                array('conditions' => array('type' => 'student')))/10));
      $this->set('users', $this->User->find('all', 
                  array('conditions' => array('type' => 'student'),
                        'order' => array($sort => $dir),
                        'limit' => 10,
                        'page' => $page)));
    } else {
      $this->Session->setFlash('Not authorized to view this user page.','fail');
       return $this->redirect(
            array('controller' => 'flights', 'action' => 'index'));
    }
  }


  public function isAuthorized($user) {
    if($user){
      if ($this->Auth->user() != $user &&
          $user['type'] == "student"){
        return false;
      }
      return true;
    } else
    return false;
  }
}