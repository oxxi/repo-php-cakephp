<div class="index">
	
	<?php echo $this->Form->create('Perfile'); ?>
	<fieldset>
		<legend>Agregar Perfil</legend>
	    <?php echo $this->Form->input('name',array('label'=>'Nombre Perfil')); ?>
		<!--<?php //echo $this->Form->input('Acceso.name'); ?>-->
		<?php echo $this->Form->checkbox('Acceso.name',array('class'=>'chkventa','value'=>'Ventas')) ?> Ventas <br/>
		<?php echo $this->Form->checkbox('Acceso.name2',array('class'=>'chkAdmon','value'=>'Administracion')) ?> Administracion <br/>
		<?php echo $this->Form->end('Guardar') ?>

	</fieldset>
</div>
