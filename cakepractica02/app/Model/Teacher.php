<?php
class Teacher extends AppModel{
	public $displayField = 'name';
	public $hasMany = array(
			'Course'=> array(
				'className'=>'Course',
				'foreignKey'=>'teacher_id',
				'dependent'=> true
				)
		);
}