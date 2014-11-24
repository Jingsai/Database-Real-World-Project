<!-- File: /app/View/Posts/index.ctp -->
<h1>Country</h1>

<?php echo $this->Html->link(
'Modify Country Multiplier',
array('controller' => 'modifyParas', 'action' => 'add', 1)
); ?>

<table>
<tr>
<th>USA</th>
<th>Canada</th>
<th>Mexico</th>
</tr>
<!-- Here is where we loop through our $posts array, printing out post info -->
<?php foreach ($data_countrys as $data_country): ?>
<tr>
	<td><?php echo $data_country['ModifyPara']['USA']; ?></td>
	<td><?php echo $data_country['ModifyPara']['Canada']; ?></td>
	<td><?php echo $data_country['ModifyPara']['Mexico']; ?></td>
</tr>
<?php endforeach; ?>
<?php unset($data_country); ?>
</table>  


<h1>Complexity</h1>

<?php echo $this->Html->link(
'Add Complexity',
array('controller' => 'modifyParas', 'action' => 'add', 2)
); ?>

<table>
<tr>
<th>Complexity</th>
</tr>
<!-- Here is where we loop through our $posts array, printing out post info -->
<?php foreach ($data_complexities as $data_complexity): ?>
<tr>
	<td><?php echo $data_complexity['ModifyPara']['complexity']; ?></td>
</tr>
<?php endforeach; ?>
<?php unset($data_complexity); ?>
</table>   

  
 
