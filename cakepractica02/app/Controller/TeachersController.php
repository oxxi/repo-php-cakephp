<?php
class TeachersController extends AppController{
	public $paginate =array(
			'limit'=>3,
			'order'=>array('Teacher.id'=>'asc')
		);
	public function index()
	{
		$this->Teacher->recursive = 0;
		$this->set('teachers',$this->paginate());
	}


	public function add()
	{
		if ($this->request->is('post')) {
			if ($this->Teacher->save($this->request->data)) {
				$this->Session->setFlash('El Profesor Fue Guardado');
				$this->redirect(array('action'=>'index'));
			}
		}
	}
}