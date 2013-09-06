<?php
class StudentsController extends AppController{
	public $helpers = array('Html','Form');
	public $components = array('Session');
	public $paginate =array(
			'limit'=>3,
			'order'=>array('Student.id'=>'asc')
		);
	public function index()
	{
		$this->Student->recursive = 0;
		$this->set('estudiantes',$this->paginate());
	}

	public function add()
	{
		if ($this->request->is('post')) {
			if ($this->Student->save($this->request->data)) {
				$this->Session->setFlash('Estudiante Guardado');
				$this->redirect(array('action'=>'index'));
			}else{
				$this->Session->setFlash('No se Pudo Guardado Estudiante ');
			}

		}
	}


	public function edit($id = null)
	{
		$this->Student->id = $id;
		if ($this->request->is('get')) {
			$this->request->data = $this->Student->read();
		}else{

			if ($this->Student->save($this->request->data)) {
				$this->Session->setFlash('Estudinte '.$this->request->data['Student']['name'].' Guardado');
				$this->redirect(array('action' => 'index'));
			}
		}
	}


	public function delete($id)
	{
		$nombreStudent = $this->request->data['Student']['name'];
		if ($this->request->is('get')) {
			throw new MethodNotAllowedException();
		}else{
			if ($this->Student->delete($id)) {
				$this->Session->setFlash('Estudiante '.$nombreStudent.' Eliminado');
				$this->redirect(array('action'=>'index'));
			}
		}

	}

}