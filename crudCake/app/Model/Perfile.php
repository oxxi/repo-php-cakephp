<?php
class Perfile extends AppModel{
	public $name = 'Perfile';
	public $hasMany = array(
		'Acceso'=>array(
			'className'=>'Acceso',
			'foreignKey'=> 'perfile_id',
			'dependent'=>true
			)
		);
}
