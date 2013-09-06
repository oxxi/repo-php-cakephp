<div class="add-teacher">
	<?php echo $this->Form->create('Teacher') ?>
	<fieldset>
		<legend>Agregar Profesor</legend>
			<?php echo $this->Form->input('name',array('label'=>'Nombre')); ?>
			<?php echo $this->Form->input('last_name',array('label'=>'Apellido')); ?>
			<?php echo $this->Form->input('cv',array('lable'=>'Cv')); ?>
			<?php echo $this->Form->end('Guardar Profesor'); ?>
	</fieldset>
</div>