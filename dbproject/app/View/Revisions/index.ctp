
<h1>Revision posts</h1>
<?php $group = json_decode(AuthComponent::user('group'));
    if (AuthComponent::user('id') && in_array("tagmembers", $group)): ?>
        <?php
            echo $this->Html->link(
                'edit tags',
                array('controller'=>'revisions','action' => 'edit',1)
            );
    ?>
<?php endif ?>

<table >
    <tr>
        <th>Id</th>
	    <th>Name</th>
        <th>No</th>
        <th>Rev</th>
        <th>Date</th>
	    <th>Obsolete</th>
        <th>Action</th>
    </tr>

<!-- Here's where we loop through our $posts array, printing out post info -->
	
    <?php foreach ($revisions as $revision): ?>
	<tr>
        <td><?php echo $revision['Revision']['id']; ?></td>
        <td><?php echo $revision['Tagmembername']['Name']; ?></td>
        <td><?php echo $revision['Revision']['no']; ?></td>
        <td><?php echo $revision['Revision']['rev'];?></td>
        <td><?php echo $revision['Revision']['DATE'];?></td> 
        <td><?php echo $revision['Revision']['revision_obsolete'];?></td> 

	<td>  <?php
                echo $this->Html->link(
                    'View',
                    array('action' => 'view', $revision['Revision']['id'], $revision['Revision']['no']));
            ?>
    <?php $group = json_decode(AuthComponent::user('group'));
    if (AuthComponent::user('id') && in_array("tagmembers", $group)): ?>        
            <?php
                echo $this->Html->link(
                    'Edit',
                    array('action' => 'edit', $revision['Revision']['id'], $revision['Revision']['no']));
            ?>
    <?php endif ?>
        </td>	
    </tr>
    <?php endforeach; ?>
 

</table>





<?php
    echo $this->Form->create();	
    
    echo $this->Form->hidden('id');   
?>
<?php $group = json_decode(AuthComponent::user('group')); ?>
<?php if(in_array("tagmembers",$group) || in_array("oe",$group)): ?>
<table>
    <tr>
    <td><?php echo $this->Form->input('no', array('style' => 'width:55px')); ?></td>
    <td><?php echo $this->Form->input('Rev',array('style' => 'width:20px')); ?></td>	
    <td><?php echo $this->Form->input('Description', array('style' => 'width:50px')); ?></td>
    <td><?php echo $this->Form->input('SubCategory', array('style' => 'width:50px')); ?></td>
<!--	<td><?php echo $this->Form->input('hvl', array('style' => 'width:50px')); ?></td> 
    <td><?php echo $this->Form->input('HVL/CC', array('style' => 'width:50px')); ?></td> 
    <td><?php echo $this->Form->input('Metal Clad', array('style' => 'width:50px')); ?></td> 
    <td><?php echo $this->Form->input('MVMCC', array('style' => 'width:50px')); ?></td> -->
    <td><?php echo $this->Form->input('Notes', array('style' => 'width:50px')); ?></td> 
    <td><?php echo $this->Form->input('INST COST', array('style' => 'width:50px')); ?></td> 
    <td><?php echo $this->Form->input('Price Note', array('style' => 'width:50px')); ?></td> 
     <td><?php echo $this->Form->input('Obsolete', array('style' => 'width:50px')); ?></td> 
    <td><?php echo $this->Form->input('Name', array('style' => 'width:150px')); ?></td> 
    </tr>
</table>

<?php
    echo $this->Form->submit(__('Submit'));
    echo $this->Form->end();
?>
<?php endif ?>

<?php echo $this->Paginator->pagination(array('div' => 'pagination pagination-centered')); ?>

