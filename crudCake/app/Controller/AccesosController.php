<?php
class AccesosController extends AppController{
	public function index()
	{
		$this->set('acceso',$this->Acceso->find());
	}
}