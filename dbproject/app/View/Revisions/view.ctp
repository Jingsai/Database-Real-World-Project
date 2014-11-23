<h2>View Tag </h2>
	
<?php
echo $this->Form->create('Revision');
echo $this->Form->hidden('id');
?>

<table width=100% border=0><tr><td width="60%" height="50%"><table width="100%" height="100" >
  <tr>
    <td>Tag No</td>
    <td>Rev#</td>
    <td>Date</td>
    <td>Sub-Category</td>
    <td>Complexity</td>
    <td>Lead Time</td>
  </tr>
  <tr>
    <td><?php echo $this->Form->input('no',array('label'=>false,'style'=>'width:50px;height:20px;margin:auto;'));?></td>
    <td><?php echo $this->Form->input('rev',array('div'=>false,'label'=>false,'style'=>'width:50px;height:20px;margin:auto;'));?></td>
    <td><?php echo $this->Form->input('DATE',array('div'=>false,'label'=>false,'type'=>'text','style'=>'width:150px;height:20px;margin:auto;'));?></td>
    <td><?php echo $this->Form->input('description',array('div'=>false,'label'=>false,'type'=>'text','style'=>'width:100px;height:20px;margin:auto;'));?></td>
    <td><?php echo $this->Form->input('Complexity',array('div'=>false,'label'=>false,'style'=>'width:100px;height:20px;margin:auto;'));?></td>
    <td><?php echo $this->Form->input('Lead Time',array('div'=>false,'label'=>false,'style'=>'width:100px;height:20px;margin:auto;'));?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table></td><td width="0%"></td>
<td width="50%">

<table width="100%" height="375">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table></td></tr></table>


<table width="100px" >
<tr>
<td>
<?php echo $this->Form->input('no',array('label'=>'Tag Number','style'=>'width:50px;height:20px;margin:auto;'));?>
</td>
<td>
<?php echo $this->Form->input('rev',array('div'=>false,'label'=>'Rev #','style'=>'width:50px;height:20px;margin:auto;'));?>
</td>
<td>
<?php echo $this->Form->input('DATE',array('div'=>false,'type'=>'text','style'=>'width:70px;height:20px;margin:0px'));?>
</td>
<td>
<?php echo $this->Form->input('Complexity',array('div'=>false,'style'=>'width:100px;height:20px;margin:0px'));?>
</td>
<td>
<?php echo $this->Form->input('Lead Time',array('div'=>false,'style'=>'width:100px;height:20px;margin:0px'));?>
</td>
</tr>
</table>
<?php
echo $this->Form->input('material', array(
    'format' => array('before', 'input', 'between', 'label', 'after', 'error')
));
?>
<?php
echo $this->Form->input('material');
//echo $this->Form->end('Save Revisoin');
?>
