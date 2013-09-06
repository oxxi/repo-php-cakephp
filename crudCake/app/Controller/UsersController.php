<?php
class UsersController  extends AppController{


	public function beforeFilter()
	{
		parent::beforeFilter();
	    $this->Auth->AutoRedirect=false;
	    $this->Auth->authError = 'No estas Autorizado';
	}

	public function login() {
		$this->set('title_for_layout', __('App -Login'));
   	    if ($this->request->is('post')) {
	        if ($this->Auth->login()) {
	           return $this->redirect($this->Auth->redirect());
	        }
        $this->Session->setFlash(__('Usuario invalido, try again'));
    	}
	}	

	public function logout()
	{
		$this->redirect($this->Auth->logout());
	}

	public function index()
	{
		$this->User->recursive = 3;
		$this->set('users',$this->paginate());
	}

	public function add()
	{
	 	if ($this->request->is('post')) {
			$this->User->create();
			if ($this->User->save($this->request->data)) {
				$this->Session->setFlash('Usuario Creado');
				$this->redirect(array('controller' => 'homes', 'action' => 'index'));
			}
			$this->Session->setFlash('No se puede crear el usuario. intente luego');
		}

		$this->set('user',$this->User->data);
	}
}