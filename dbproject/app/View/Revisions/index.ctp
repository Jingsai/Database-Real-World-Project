
<h1>Revision posts</h1>
            <?php
                echo $this->Html->link(
                    'edit tags',
                    array('controller'=>'revisions','action' => 'edit',1)
                );
            ?>

<table>
    <tr>
        <th>Id</th>
	<th>No</th>
        <th>Rev</th>
	<th>Material</th>
	<th>Actions</th>
    </tr>

<!-- Here's where we loop through our $posts array, printing out post info -->

    <?php foreach ($revisions as $revision): ?>
    <tr>
        <td><?php echo $revision['Revision']['id']; ?></td>
        <td><?php echo $revision['Revision']['no']; ?></td>
        <td><?php echo $revision['Revision']['rev'];?></td>
        <td><?php echo $revision['Revision']['material']; ?></td>
	<td>  <?php
                echo $this->Html->link(
                    'View',
                    array('action' => 'view', $revision['Revision']['id']));
            ?>
            <?php
                echo $this->Html->link(
                    'Edit',
                    array('action' => 'edit', $revision['Revision']['id']));
            ?>
        </td>

    </tr>
    <?php endforeach; ?>

</table>






<?php
    echo $this->Form->create();
    echo $this->Form->hidden('id');
   
    echo $this->Form->input('no');
    echo $this->Form->submit(__('Submit'));
    echo $this->Form->end();
?>

