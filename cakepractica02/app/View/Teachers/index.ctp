<div class="index-teacher">
	<h2>Profesores</h2>
<br>
<?php echo $this->Html->link('Agregar Profesor',array('action'=>'add')); ?>
	<table>
		
		<tr>
			<th><?php echo $this->Paginator->sort('id') ?></th>
			<th><?php echo $this->Paginator->sort('name','Nombre') ?></th>
			<th><?php echo $this->Paginator->sort('last_name','Apellido') ?></th>
			<th><?php echo $this->Paginator->sort('cv','CV') ?></th>
		</tr>
		<?php foreach ($teachers as $k=>$teacher):?>
			<tr>
				<td><?php echo h($teacher['Teacher']['id']) ?></td>
				<td><?php echo h($teacher['Teacher']['name']) ?></td>
				<td><?php echo h($teacher['Teacher']['last_name']) ?></td>
				<td><?php echo h($teacher['Teacher']['cv']) ?></td>
			</tr>
		<?php endforeach; ?>
	</table>

	<br/>
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

	<br>
	<p><?php echo $this->Html->link('Volver Pagina Principal',array('controller'=>'homes','action'=>'index')); ?></p>
</div>