<div class="index-homes">
	
	<h2>Pagina de Inicio</h2>

	<h3>Bienvenido</h3>
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae, qui, ab, sequi suscipit dignissimos voluptatem magnam ratione totam dicta quibusdam et fugiat velit eligendi odit maiores quaerat consequatur magni repellendus! <br>

Lorem ipsum dolor sit amet, consectetur adipisicing elit. In, tempora, quis, asperiores possimus ducimus quas suscipit natus architecto at rem ut fuga fugit cupiditate quia corporis ea magni aliquid eaque. <br>
<br>
<div><?php echo $this->Html->link('Cursos',
	array('controller'=>'courses','action'=>'index'));?>
    </div>
	<br>
    <div>
    	<?php echo $this->Html->link('Profesores',
    	     array('controller'=>'teachers','action'=>'index')) ?>
    </div>
	<br>
	<div>
		<?php echo $this->Html->link('Estudiantes',
			  array('controller'=>'students','action'=>'index')); ?>
	</div>
</div>