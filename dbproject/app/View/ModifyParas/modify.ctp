<!-- File: /app/View/Posts/add.ctp -->

<?php if($tableid == 1): ?>
	<h1>Modify Country Multiplier</h1>
	<?php
	echo $this->Form->create('ModifyPara');
	echo $this->Form->input('USA');
	echo $this->Form->input('Canada');
	echo $this->Form->input('Mexico');
	echo $this->Form->end('Save Country Multiplier');
	?>
<?php endif ?>

<?php if($tableid == 2): ?>
	<h1>Add Complexity</h1>
	<?php
	echo $this->Form->create('ModifyPara');
	echo $this->Form->input('complexity');
	echo $this->Form->end('Save Complexity');
	?>
<?php endif ?>