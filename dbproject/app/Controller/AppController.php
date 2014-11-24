<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {
	//public $components = array('DebugKit.Toolbar');
	

	/*public $components = array(
    'Session',
    'Auth' => array(
        'loginRedirect' => array('controller' => 'flights', 'action' => 'index'),
        'logoutRedirect' => array(
            'controller' => 'Pages',
            'action' => 'index'
        ),
        'authorize' => array('Controller') 
	    )
	);*/
	/*public function beforeFilter() {
    parent::beforeFilter();
    // Allow users to register and logout.
    $this->Auth->allow('login', 'logout','home');
	}*/


    public $helpers = array(
        'Session',
        'Html' => array('className' => 'BoostCake.BoostCakeHtml'),
        'Form' => array('className' => 'BoostCake.BoostCakeForm'),
        'Paginator' => array('className' => 'BoostCake.BoostCakePaginator'),
        'Js' => array('Jquery'),
    );

    public $components = array(
    'Session',
    'Auth' => array(
        'loginRedirect' => array('controller' => 'staticPages', 'action' => 'index'),
        'logoutRedirect' => array(
            'controller' => 'staticPages',
            'action' => 'index'
        ),
        'authError' => 'You must be logged in to view this page.',
        'loginError' => 'Invalid username or Password.', 
        'authorize' => array('Controller') 
        ),
    'RequestHandler',
    );
    public function beforeFilter() {
    parent::beforeFilter();
    // Allow users to login and logout.
        $this->Auth->allow('login', 'logout');
    }

    

   /*public function isAuthorized($user) {
        return false;
    }*/

    public function loggedIn(){
        if($this->Auth->user){
            return true;
        }
        return false;
    }
	
}
