
<div class="users form">
<h1>Users</h1>            
<?php echo $this->Html->link( "Add A New User.",   array('action'=>'add'),array('escape' => false) ); ?>
<br/>
<!--<?php 
    echo $this->Html->link( "Logout",   array('action'=>'logout') ); 
?>-->
<table>
    <thead>
        <tr>
            <th><?php echo $this->Form->checkbox('all', array('name' => 'CheckAll',  'id' => 'CheckAll')); ?></th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('username', 'Username');?>  </th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('email', 'E-Mail');?></th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('created', 'Created');?></th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('modified','Last Update');?></th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('group','Group');?></th>
           <!--<th style="text-align: center;"><?php echo $this->Paginator->sort('status','Status');?></th>-->
            <th style="text-align: center;">Actions</th>
        </tr>
    </thead>
    <tbody>                   
        <?php $count=0; ?>
        <?php foreach($users as $user): ?>                
        <?php $count ++;?>
        <?php if($count % 2): echo '<tr>'; else: echo '<tr class="zebra">' ?>
        <?php endif; ?>
            <td><?php echo $this->Form->checkbox('User.id.'.$user['User']['id']); ?></td>
            <!--<td><?php echo $this->Html->link( $user['User']['username']  ,   array('action'=>'edit', $user['User']['id']),array('escape' => false) );?></td>-->
            <td style="text-align: center;"><?php echo $user['User']['username']; ?></td>
            <td style="text-align: center;"><?php echo $user['User']['email']; ?></td>
           
           <!-- <td style="text-align: center;"><?php echo $this->Time->niceShort($user['User']['created']); ?></td>
            <td style="text-align: center;"><?php echo $this->Time->niceShort($user['User']['modified']); ?></td>-->
            <td style="text-align: center;"><?php echo $user['User']['created']; ?></td>
            <td style="text-align: center;"><?php echo $user['User']['modified']; ?></td>
            <td style="text-align: center;"><?php echo $user['User']['group']; ?></td>
            <!--<td style="text-align: center;"><?php echo $user['User']['status']; ?></td>-->
            <td >
            <?php echo $this->Html->link("Edit",   array('action'=>'edit', $user['User']['id'])); ?> |
            <?php
                echo $this->Html->link("Delete", array('action'=>'delete', $user['User']['id']));
            ?>
            </td>
        </tr>
        <?php endforeach; ?>
        <?php unset($user); ?>
    </tbody>
</table>
    <?php echo $this->Paginator->prev('<< ' . __('previous', true), array(), null, array('class'=>'disabled'));?>
    <?php echo $this->Paginator->numbers(array('class' => 'numbers'));?>
    <?php echo $this->Paginator->next(__('next', true) . ' >>', array(), null, array('class' => 'disabled'));?>
</div>  


