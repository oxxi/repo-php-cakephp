<div class="users Form">
	<?php echo $this->Session->flash('auth'); ?>
	<?php echo $this->Form->create('User'); ?>
	<h1>Login Usuario</h1><br/>
	<?php echo $this->Form->input('username',array('label'=>'Usuario')); ?>
	<?php echo $this->Form->input('password',array(
								  'label' => 'Contraseña',
								  'type' => 'Password',
								  'required' => true)); ?>
	<br/>
	<?php echo $this->Form->end(__('Ingresar')); ?>
</div>