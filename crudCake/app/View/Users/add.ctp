<dv class="users form">
	<?php echo $this->element('menu'); ?>
	<?php echo $this->Form->create('User'); ?>

	<?php echo $this->Form->input('username',array('label'=>'Usuario')); ?>
	<?php echo $this->Form->input('password',array(
								  'label' =>'Contraseña',
								  'type' => 'Password',
								  'required' => true)); ?>
<br/>
<?php echo $this->Form->end(__('Guardar')); ?>
<br/>
<?php echo $this->data['User']['username']; ?>
</dv>