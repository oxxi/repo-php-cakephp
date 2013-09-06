<div class="index-course">
	<h2>Lista de Cursos</h2>

	<table>
		<tr>
			<th>Id</th>
			<th>Nombre</th>
			<th>Descripción</th>
			<th>Profesor</th>
		</tr>
		<?php foreach ($courses as $key => $course): ?>
			<tr>
				<td><?php echo $course['Course']['id']; ?></td>
				<td><?php echo $course['Course']['name']; ?></td>
				<td><?php echo $course['Course']['description']; ?></td>
				<td><?php echo $this->Html->link($course['Teacher']['name'],
				          array('controller' => 'teachers', 'action' => 'index'),
				          $course['Teacher']['id']);?>
				      </td>
			</tr>
		<?php endforeach; ?>
	</table>
<br/>
<p><?php echo $this->Html->link('Agregar Curso',array('action'=>'add')); ?></p><br/>
<p><?php echo $this->Html->link('Pagina Principal',
		 array('controller'=>'homes','action'=>'index')); 
?></p>
</div>