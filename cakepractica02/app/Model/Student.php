<?php
class Student extends AppModel{
	

	public $validate = array(
		'name' =>array(
			'rule'=> array('notEmpty'),
			'message'=>'El nombre es Requerido'),
		'last_name' => array(
			'rule' => array('notEmpty'),
			'message' => 'No puede ser vacio')
		);


	public $hasAndBelongsToMany = array(
			'Course'=>array(
				'className'=>'Course',
				'joinTable'=> 'students_courses',
				'foreignKey'=>'student_id',
				'associationForeignKey'=>'course_id')
		);
}//end class