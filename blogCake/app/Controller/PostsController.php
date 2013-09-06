<?php
class PostsController extends AppController {
	 public $helpers = array('Html', 'Form');
     public $name = 'Posts';
     public $components = array('Session');

    public function index() {
        $this->set('posts', $this->Post->find('all'));
    }

    public function view($id = null) {
        $this->Post->id = $id;
        $this->set('post', $this->Post->read());
    }

    public function add() {
    if ($this->request->is('post')) {
        $this->request->data['Post']['user_id'] = $this->Auth->user('id'); 
        if ($this->Post->save($this->request->data)) {
            $this->Session->setFlash(__('Your post has been saved.'));
            return $this->redirect(array('action' => 'index'));
        }
    }
}

    public function edit($id=null)
    {
    	$this->Post->id = $id;
    	if ($this->request->is('get')) {
    		$this->request->data = $this->Post->read();
    	}else{
    		if ($this->Post->save($this->request->data)) {
    			$this->Session->setFlash('El Posts Se ha Actualizado.');
    			$this->redirect(array('action' => 'index'));
    		}
    	}
    }

    public function delete($id)
    {
    	if (!$this->request->is('post')) {
        	throw new MethodNotAllowedException();
    	}
    	if ($this->Post->delete($id)) {
       		 $this->Session->setFlash('El post Con id: ' . $id . ' ha sido Eliminado.');
       		 $this->redirect(array('action' => 'index'));
   		 }
    }

    public function isAuthorized($user)
    {
       if ($this->action === 'add') {
          return true;
       }
       //el dueño del post puede editar y eliminar
       if (in_array($this->action, array('edit','delete'))) {
           $postsId = $this->request->params['pass'][0];
           if ($this->Post->isOwnedBy($postsId,$user['id'])) {
               return true;
           }
       }

       return parent::isAuthorized($user);
    }


}