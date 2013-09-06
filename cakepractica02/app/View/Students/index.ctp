<div>
<h2>Listado de Estudiantes</h2>
<p><?php echo $this->Html->link('Agregar Estudiante',array('action'=>'add')) ?></p>

<!--<?php //print_r($estudiantes); ?>-->
<table>
	<tr>
		<th>Id</th>
		<th>Nombre</th>
		<th>Apellido</th>
		<th>Acciones</th>
	</tr>
	<?php foreach ($estudiantes as $key => $estudiante): ?>
		<tr>
			<td><?php echo $estudiante['Student']['id'];?></td>
			<td><?php echo $estudiante['Student']['name']; ?></td>
			<td><?php echo $estudiante['Student']['last_name'];?></td>
			<td><?php echo $this->Html->link('Editar',array('action'=> 'edit',
			                                 $estudiante['Student']['id'])); ?>
			<?php echo $this->Form->postLink('Eliminar', array('action'=>'delete',
			                                $estudiante['Student']['id']),
			                                array('confirm'=>'Esta seguro de eliminar a: '.$estudiante['Student']['name'])); ?>
			</td>
		</tr>
    <?php endforeach; ?>
</table>

<p>
	<?php echo $this->Paginator->counter(
		array('format'=>'Pagina {:page} de {:pages},mostrando {:current} registros de {:count}' )
	); ?>
	</p>

	<div class="paging">
		<?php  echo $this->Paginator->prev('Anterior',array(),null,array('class'=>'prev disabled'));?>
		<?php echo $this->Paginator->numbers(array('separator'=>'')); ?>
		
		<?php echo $this->Paginator->next('Siguiente',array(),null,array('class'=>'next disabled')) ?>
	</div>
<br/>

<p><?php echo $this->Html->link('Volver Pagina Principal',
		 array('controller'=>'homes','action'=>'index')) ?></p>

</div>