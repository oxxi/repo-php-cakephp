<?php
App::uses('AuthComponent', 'Controller/Component');
class User extends AppModel{
	public $name = 'User';

	public $validate = array(
		'username' => array(
			'required' => array(
				'rule' => array('notEmpty'),
				'message' => 'El Usuario es Requerido'
				)
			),
		'password' => array(
			'required' => array(
				'rule' => array('notEmpty'),
				'message' => 'La contraseña es Requerida'
				)
			)

		);
	
	public function beforeSave($options = array())
	{
		if (isset($this->data[$this->alias]['password'])) {
			$this->data['User']['password'] = AuthComponent::password($this->data['User']['password']);
		}
		return true;
	}
}