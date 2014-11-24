
<div class="users form">
<h1>Users</h1>            
<?php echo $this->Html->link( "Add A New User.",   array('action'=>'add'),array('escape' => false) ); ?>
<!--<input id="btnPrint" type="button" value="Print"  onclick=preview() />-->
<p align="right" id="demo" onclick="preview()">Print</p> 
<input id="username" type = "hidden" value = "<?php echo AuthComponent::user('username'); ?>"> 
<input id="webroot" type="hidden" value = "<?php echo $this->webroot; ?>">
<br/>
<!--<?php 
    echo $this->Html->link( "Logout",   array('action'=>'logout') ); 
?>-->
<div id = "myprint" >
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
</div>
    <?php echo $this->Paginator->pagination(array('div' => 'pagination pagination-centered')); ?>
</div>  
<?php echo $this->Html->script('print')?>
<!--<script>  
    function preview(){ 
        //alter(WEBROOT_DIR);

        var html = document.getElementById("myprint").innerHTML;
        var printname = $("#username").val();
        var imgurl = $("#webroot").val() + "img/se_logo.gif";
        var imghtml = '<img src = "'+imgurl + '>';
        var comName = "Schneider Electric";
        var currentdate = new Date(); 
        var datetime = currentdate.getDate() + "/"+ (currentdate.getMonth()+1)  + "/" + currentdate.getFullYear();
        var space = "&nbsp;&nbsp;&nbsp&nbsp";
        var imghtml = '<img src ="/html/dbproject/img/se_logo.gif">';
        window.document.body.innerHTML = imghtml+"<p>"+comName+space+ datetime+space+printname+"</p>" + html;
        window.print();    
    }
</script> -->


