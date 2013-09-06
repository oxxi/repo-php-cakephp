<div>
	<h1>Editar Estudiante</h1>

	<?php echo $this->Form->create('Student', array('action'=>'edit')); ?>
	<?php echo $this->Form->input('name'); ?>
	<?php echo $this->Form->input('last_name'); ?>
	<?php echo $this->Form->input('id',array('type'=>'hidden')); ?>

	<?php echo $this->Form->end('Guardar Estudiante'); ?>
</div>