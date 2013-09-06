<h1>Blog posts</h1>
<p><?php echo $this->Html->link("Agregar Post", array('action' => 'add')); ?></p>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
                <th>Action</th>
        <th>Created</th>
    </tr>


<?php foreach ($posts as $post): ?>
    <tr>
        <td><?php echo $post['Post']['id']; ?></td>
        <td>
            <?php echo $this->Html->link($post['Post']['title'], array('action' => 'view', $post['Post']['id']));?>
                </td>
                <td>
            <?php echo $this->Form->postLink(
                'Eliminar',
                array('action' => 'delete', $post['Post']['id']),
                array('confirm' => 'Seguro?')
            )?>
            <?php echo $this->Html->link('Editar', array('action' => 'edit', $post['Post']['id']));?>
        </td>
        <td><?php echo $post['Post']['created']; ?></td>
    </tr>
<?php endforeach; ?>

</table>