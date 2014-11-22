<h2>View Tag </h2>
	
<?php
echo $this->Form->create('Revision');
echo $this->Form->hidden('id');
?>
<table>
<tr>
<td>
<?php echo $this->Form->input('no',array('size'=>400));?>
<?php echo $this->Form->input('rev');?>
</td>
</tr>
</table>

<?php
echo $this->Form->input('material');
//echo $this->Form->end('Save Revisoin');
?>
