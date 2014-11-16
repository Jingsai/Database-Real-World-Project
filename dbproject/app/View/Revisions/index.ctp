
<h1>Revision posts</h1>
            <?php
                echo $this->Html->link(
                    'edit tags',
                    array('controller'=>'revisions','action' => 'edit',1)
                );
            ?>

<table>
    <tr>
        <th>id</th>
	<th>no</th>
        <th>rev</th>
	<th>material</th>
    </tr>

<!-- Here's where we loop through our $posts array, printing out post info -->

    <?php foreach ($revisions as $revision): ?>
    <tr>
        <td><?php echo $revision['Revision']['id']; ?></td>
        <td><?php echo $revision['Revision']['no']; ?></td>
        <td>
            <?php
                echo $this->Html->link(
                    $revision['Revision']['rev'],
                    array('action' => 'view', $revision['Revision']['rev'])
                );
            ?>
        </td>
        <td><?php echo $revision['Revision']['material']; ?></td>
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

