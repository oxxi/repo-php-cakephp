<?php
class UsersController extends AppController{
	public $helpers = array('Html','Form');
	public $components = array('Auth','Session');

	public function beforeFilter() {
	    parent::beforeFilter();
	    $this->Auth->allow('add'); // Letting users register themselves
	}

	public function login() {
		debug($this->Auth->login());
	   	 if ($this->request->is('post')) {
	        if ($this->Auth->login()) {
	            return $this->redirect($this->Auth->redirect());
	        }
	        $this->Session->setFlash(__('Usuario y/o contraseña invalida, try again'));
	    }
	}

	public function logout() {
    	return $this->redirect($this->Auth->logout());
	}

	public function index()
	{
		$this->User->recursive = 0;
		$this->set('users', $this->paginate());
	}
	public function view($id=null)
	{
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Usuario Invalido'));
		}
		$this->set('user', $this->User->read(null, $id));
	}

	public function add()
	{
		  if ($this->request->is('post')) {
            $this->User->create();
	            if ($this->User->save($this->request->data)) {
	                $this->Session->setFlash(__('Usuario Creado'));
	                return $this->redirect(array('action' => 'index'));
	            }
            $this->Session->setFlash(__('No se pudo crear el usuario porfavor intente luego.'));
           }
	}

	public function edit($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Usuario Invalido'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('El usuario ha sido Guardado'));
                return $this->redirect(array('action' => 'index'));
            }
            $this->Session->setFlash(__('El usuario no ha sido guardado porfavor intente luego.'));
        } else {
            $this->request->data = $this->User->read(null, $id);
            unset($this->request->data['User']['password']);
        }
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('El usuario no es valido'));
        }
        if ($this->User->delete()) {
            $this->Session->setFlash(__('Usuario Eliminado'));
            return $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('El usuario no pudo ser eliminado'));
        return $this->redirect(array('action' => 'index'));
    }
}