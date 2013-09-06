<div class="add-course">
	<?php echo $this->Form->create('Course'); ?>
<fieldset>
		<legend>Agregar Curso</legend>
	<?php 
	echo $this->Form->input('name',array('label'=>'Nombre Curso'));
	echo $this->Form->input('description',array('label'=>'Descripción'));
	echo $this->Form->input('teacher_id',array('label'=>'Profesor'));
	
	?>
</fieldset>
<?php echo $this->Form->end('Guardar Curso'); ?>

<p><?php echo $this->Html->link('Volver a los Cursos',array('action'=>'index')); ?></p>
</div>