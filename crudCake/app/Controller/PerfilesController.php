<?php	
class PerfilesController extends AppController{
		public $paginate =array(
			'limit'=>3,
			'order'=>array('Perfile.id'=>'asc')
		);
	public function index()
	{
		$this->set('title_for_layout', __('App - Perfiles Usuario'));
		$this->recursiver = 0;
		$this->set('perfiles',$this->paginate());
		$perfi = $this->Perfile->find();
		$this->set('per',$perfi);
	}

	public function add(){
		if ($this->request->is('post')) {
			$this->Perfile->create();
			echo "<pre>";
			var_dump($this->request->data);
			exit;
			echo "</pre>";
			if (!$this->Perfile->save($this->request->data)) {
				$this->Session->setFlash('El perfil fue Guardado');
				$this->redirect(array('action'=>'index'));
			}
		}
		//$perfiles =>$this->Perfile->Acceso->find();
		$this->set('group',$this->Perfile->find());
		//$this->set('perfil',$this->Perfil->data);
	}

	public function guardar()
	{
		# code...
	}
}