<h1>Edit Revision</h1>
<?php
echo $this->Form->create('Revision');
echo $this->Form->hidden('id');
echo $this->Form->input('rev');
echo $this->Form->input('material');
echo $this->Form->end('Save Revisoin');
?>
