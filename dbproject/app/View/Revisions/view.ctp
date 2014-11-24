<h2>View Tag </h2>
	
<?php
echo $this->Form->create('Revision');
echo $this->Form->hidden('id');
?>
<style>
table, th, td
{
	border:1px solid black;
	border-collapse: collapse;
}
</style>



<table cellspacing="0" width=100% border=1 height="50%">
<tr height="50%">
 <td width="60%" height="50%">
  <table width="100%" height="50%" cellspacing="0">
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
     <td colspan="8"><?php echo $this->Form->input('DESCRIPTION',array('div'=>false,'label'=>false,'style'=>'width:700px;height:20px;'));?>
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
	<tr><td> </td> <td> </td> <td></td><td></td></tr>
	<tr><td> </td> <td> </td> <td></td><td></td></tr>
	<tr><td> </td> <td> </td> <td></td><td></td></tr>
	<tr><td> </td> <td> </td> <td></td><td></td></tr>
	</table>
	</td>
  </tr>
  </table>
 </td>
 <td width="0%"></td>
 <td width="50%">
  <table width="100%" height="20%">
    <tr><td>Material:  </td><td> <?php echo $this->Form->input('material',array('div'=>false,'label'=>false,'style'=>'width:70px;height:20px;'));?></td></tr>
    <tr><td>Labor : </td><td> <?php echo $this->Form->input('LABOR',array('div'=>false,'label'=>false,'style'=>'width:70px;height:20px;'));?></td></tr>
    <tr><td>Engineering:  </td> <td><?php echo $this->Form->input('Engineering',array('div'=>false,'label'=>false,'style'=>'width:70px;height:20px;'));?></td></tr>
<tr><td colspan="4">Install Cost &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$ <?php  $var= $this->request->data['Revision']['material']+ $this->request->data['Revision']['Engineering']+ $this->request->data['Revision']['LABOR'];                                                                 
        echo $var;?> </td></tr>
  </table>
 </td>
</tr>
</table>


