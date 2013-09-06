<div class="index">
	<br>
	<table>
		<tr>
			<th> <?php echo $this->Paginator->sort('id');?></th>
			<th> <?php echo $this->Paginator->sort('name','Nombre Perfil');?></th>
			<th>Acciones</th>
		</tr>
		<?php foreach ($perfiles as $key => $perfil):?>
		<tr>
			<td><?php echo h($perfil['Perfile']['id']); ?></td>
			<td><?php echo h($perfil['Perfile']['name']); ?></td>
			<td><?php echo $this->Html->link('Editar',array('action'=>'edit')); ?>
				<?php echo $this->Form->postLink('Eliminar',array('action'=>'delete'),
				 								array('confirm'=>'¿Esta Seguro que desea Eliminar el Perfil?')); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<br>
<?php echo $this->Html->link('Agregar Perfil',array('action'=>'add')); ?>


	<pre>
		<?php var_dump($per);?>
	</pre>
	
</div>