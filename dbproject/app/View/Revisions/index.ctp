
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
        <th>Date</th>
	<th>Description<th>
	<th>Sub Category<th>
	<!-- <th>Notes</th> -->
	<th>Actions</th>	
    </tr>

<!-- Here's where we loop through our $posts array, printing out post info -->
	
    <?php foreach ($revisions as $revision): ?>
	<tr>
        <td><?php echo $revision['Revision']['id']; ?></td>
        <td><?php echo $revision['Revision']['no']; ?></td>
        <td><?php echo $revision['Revision']['rev'];?></td>
        <td><?php echo $revision['Revision']['DATE'];?></td> 
        <td><?php echo $revision['Revision']['Description'];?></td> 
        <td><?php echo $revision['Revision']['SubCategory'];?></td>	
	 <!-- <td><?php echo $revision['Revision']['Notes'];?></td>-->
	<td>  <?php
                echo $this->Html->link(
                    'View',
                    array('action' => 'view', $revision['Revision']['id'], $revision['Revision']['no']));
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
?>
<table>
    <tr>
    <td><?php echo $this->Form->input('ID', array('style' => 'width:30px')); ?></td>
    <td><?php echo $this->Form->input('no', array('style' => 'width:55px')); ?></td>
    <td><?php echo $this->Form->input('Rev',array('style' => 'width:20px')); ?></td>	
    <td><?php echo $this->Form->input('DATE', array('style' => 'width:50px')); ?></td> 
    <td><?php echo $this->Form->input('Description'); ?></td>
    <td><?php echo $this->Form->input('SubCategory', array('style' => 'width:100px')); ?></td>
	<!-- <td><?php echo $this->Form->input('Notes'); ?></td> -->
    </tr>
</table>

<?php
    echo $this->Form->submit(__('Submit'));
    echo $this->Form->end();
?>

<?php echo $this->Paginator->pagination(array('div' => 'pagination pagination-centered')); ?>

