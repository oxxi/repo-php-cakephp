<div>
	<h2>Registro de Estudiantes</h2>
	<p><?php echo $this->Html->link('Listado de Alumno', array('action' => 'index')); ?></p>
	<br/>
	<?php echo $this->Form->create('Student'); ?>

	<?php echo $this->Form->input('name',array('label'=>'Nombre')); ?>
	<?php echo $this->Form->input('last_name',array('label'=>'Apellido')); ?>
	<?php echo $this->Form->end('Guardar Estudiante'); ?>
</div>