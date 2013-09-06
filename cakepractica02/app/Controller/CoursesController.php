<?php
class CoursesController extends AppController{


	public function index()
	{
		$this->Course->recursive = 0;
		$this->set('courses',$this->paginate());
	}

	public function add()
	{
		if ($this->request->is('post')) {
			if ($this->Course->save($this->request->data)) {
				$this->Session->setFlash('El curso fue Guardado');
				$this->redirect(array('action'=>'index'));
			}
		}
		$teachers = $this->Course->Teacher->find('list');
		$students = $this->Course->Student->find('list');
		$this->set(compact('teachers','students'));
	}
}