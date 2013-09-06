<?php
class Acceso extends AppModel{
	public $name = 'Acceso';

	public $belongsTo = array(
		'Perfil'=>array(
			'className'=>'Perfile',
			'foreignKey'=>'perfile_id'
			)
		);
}