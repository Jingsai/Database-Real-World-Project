<!-- File: /app/View/Posts/index.ctp -->
<h1>Country</h1>
<table>
<tr>
<th>USA</th>
<th>Canada</th>
<th>Mexico</th>
<th>Update</th>
</tr>
<!-- Here is where we loop through our $posts array, printing out post info -->
<?php foreach ($data_countrys as $data_country): ?>
<tr>
	<td><?php echo $data_country['ModifyPara']['USA']; ?></td>
	<td><?php echo $data_country['ModifyPara']['Canada']; ?></td>
	<td><?php echo $data_country['ModifyPara']['Mexico']; ?></td>
	<td><?php echo $this->Html->link('Modify Country Multiplier',
		// 1 is the table id, next one is the id of this table
      array('controller' => 'modifyParas', 'action' => 'modify', 1, $data_country['ModifyPara']['id'])); ?>
	</td>
</tr>
<?php endforeach; ?>
<?php unset($data_country); ?>
</table>  


<h1>Complexity</h1>
<?php echo $this->Html->link(
	'Add Complexity',
	// do not need 0 parameter. just because modify call needs two parameters
	array('controller' => 'modifyParas', 'action' => 'modify', 2, 0)
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

  
 
