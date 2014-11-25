<h2>View Tag </h2>
	
<?php
echo $this->Form->create('Revision');
echo $this->Form->hidden('id');
?>
<style>
table, th, td
{
	border:0px solid black;
	border-collapse: collapse;
}
</style>

<p align="right">
<?php $group = json_decode(AuthComponent::user('group'));
    if (AuthComponent::user('id') && in_array("tagmembers", $group)): ?> 
<?php
                echo $this->Html->link(
                    'Make Revision to Tag',
                    array('action' => 'edit', $this->request->data['Revision']['id'],$this->request->data['Revision']['no']));
            ?>
<?php endif ?>
</p>

<p align="right" id="demo" onclick="preview()">Print</p> 
<input id="username" type = "hidden" value = "<?php echo AuthComponent::user('username'); ?>"> 
<input id="webroot" type="hidden" value = "<?php echo $this->webroot; ?>">
<div id = "myprint" >

<table cellspacing="0" width=100% border=0 height="50%">
<tr height="50%">
 <td width= height="50%">
  <table width="90%" height="50%" cellspacing="0">
   <tr height="2%">
     <td>Tag No</td>
     <td>Rev#</td>
     <td>Date</td>
     <td>Sub-Category</td>
     <td>Complexity</td>
     <td>Lead Time</td>
   </tr>
   <tr height="0%" >
     <td ><?php echo $this->Form->input('no',array('label'=>false));?></td>
     <td><?php echo $this->Form->input('rev',array('div'=>false,'label'=>false,'style'=>'width:100px;height:20px;padding:5px;'));?></td>
     <td><?php echo $this->Form->input('DATE',array('div'=>false,'label'=>false,'type'=>'text','style'=>'width:100px;height:20px;padding:5px;'));?></td>
     <td><?php echo $this->Form->input('SubCategory',array('div'=>false,'label'=>false,'type'=>'text','style'=>'width:100px;height:20px;padding:5px;'));?></td>
     <td><?php echo $this->Form->input('Complexity',array('div'=>false,'label'=>false,'style'=>'width:100px;height:20px;padding:5px;'));?></td>
     <td><?php echo $this->Form->input('Lead Time',array('div'=>false,'label'=>false,'style'=>'width:100px;height:20px;padding:5px;'));?></td>
   </tr>
  <tr>
	<td colspan="2"> Tag Description: </td>
  </tr>
  <tr>
     <td colspan="8"><?php echo $this->Form->input('Description',array('div'=>false,'label'=>false,'style'=>'width:700px;height:20px;'));?>
</td>
   </tr>
  <tr>
	<td colspan="2"> Tag Notes: </td>
  </tr>
  <tr>
     <td colspan="8"><?php echo $this->Form->input('Notes',array('div'=>false,'label'=>false,'style'=>'width:700px;height:20px;'));?>
</td>
   </tr>
  <tr>
	<td colspan="2"> Price Note: </td>
  </tr>
  <tr>
     <td colspan="8"><?php echo $this->Form->input('Price Note',array('div'=>false,'label'=>false));?>
</td>
   </tr>
  <tr>
	<td colspan="3">
	<table width="100px">
	<tr><td> </td> <td>USA$ </td> <td>Canada$</td><td>Mexico$</td></tr>
	<tr><td><?php echo $this->Form->input('hvl',array('label'=>'HVL','type'=>'checkbox'));?> </td><td><?php echo $this->request->data['Revision']['hvlusa']; ?> </td> <td> <?php echo $this->request->data['Revision']['hvlcanada']; ?> </td><td><?php echo $this->request->data['Revision']['hvlmexico']; ?>  </td></tr>
	<tr><td><?php echo $this->Form->input('HVL/CC',array('label'=>'HVL/CC','type'=>'checkbox'));?> </td> <td><?php echo $this->request->data['Revision']['hvlccusa']; ?> 	 </td> <td><?php echo $this->request->data['Revision']['hvlccanada']; ?>  </td><td> <?php echo $this->request->data['Revision']['hvlccmexico']; ?> </td></tr>
	<tr><td><?php echo $this->Form->input('Metal Clad',array('label'=>'Metal Clad','type'=>'checkbox'));?> </td> <td><?php echo $this->request->data['Revision']['metalusa']; ?>  </td> <td> <?php echo $this->request->data['Revision']['metalcanada']; ?> </td><td><?php echo $this->request->data['Revision']['metalmexico']; ?> </td></tr>
	<tr><td><?php echo $this->Form->input('MVMCC',array('label'=>'MVMCC','type'=>'checkbox'));?> </td> <td><?php echo $this->request->data['Revision']['mvusa']; ?>  </td> <td> <?php echo $this->request->data['Revision']['mvcanada']; ?> </td><td><?php echo $this->request->data['Revision']['mvmexico']; ?>  </td></tr>
	</table>
	<table>
	<tr><td>Tag Number</td><td>FO Number Applied To</td><td>Notes to Next Engineer</td></tr>
	</table>
	<table>
	<tr><td> <?php echo $this->Form->input('no',array('div'=>false,'label'=>false,'style'=>'width:100px;height:20px;'));?></td><td> <?php echo $this->Form->input('appliedfono',array('div'=>false,'label'=>false,'style'=>'width:130px;height:20px;'));?></td><td> <?php echo $this->Form->input('notesengineer',array('div'=>false,'label'=>false,'style'=>'width:100px;height:20px;'));?></td><td></td></tr>
	</table>

	</td>
	<!--<td colspan="4"><?php echo $this->Form->input('revision_absolete',array('label'=>false,'type'=>'checkbox'));?>Click Box to Make Tag Permanently Absolete </td>-->
  </tr>
  </table>
 </td>
 <td width="0%"></td>
 <td width="50%">
  <table width="100%" height="20%">
    <?php $group = json_decode(AuthComponent::user('group'));
    if (AuthComponent::user('id') && (in_array("tagmembers", $group) || in_array("oe", $group))): ?> 
    <tr><td>Material:  </td><td> <?php echo $this->Form->input('material',array('div'=>false,'label'=>false,'style'=>'width:70px;height:20px;'));?></td></tr>
    <tr><td>Labor : </td><td> <?php echo $this->Form->input('LABOR',array('div'=>false,'label'=>false,'style'=>'width:70px;height:20px;'));?></td></tr>
    <tr><td>Engineering:  </td> <td><?php echo $this->Form->input('Engineering',array('div'=>false,'label'=>false,'style'=>'width:70px;height:20px;'));?></td></tr>
<tr><td>Install Cost</td><td> <?php echo $this->Form->input('installcost',array('div'=>false,'label'=>false,'style'=>'width:70px;height:20px;'));?> </td></tr>
<?php endif ?>

    <tr><td> Tag Member: </td><td><?php echo $this->Form->input('tagmembername',array('div'=>false,'label'=>false,'style'=>'width:130px;height:20px;'));?> </td></tr>
    <tr><td> Price Expires: </td><td><?php echo $this->Form->input('expprice',array('div'=>false,'label'=>false,'style'=>'width:90px;height:20px;'));?> </td></tr>
  </table>
 </td>
</tr>
</table>
</div>  
<?php echo $this->Html->script('print')?>

