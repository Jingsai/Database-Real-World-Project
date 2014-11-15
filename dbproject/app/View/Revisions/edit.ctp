<h1>Add Post</h1>
<?php
echo $this->Form->create('Revision');
echo $this->Form->input('no');
echo $this->Form->input('rev');
echo $this->Form->input('material');
echo $this->Form->submit();
echo $this->Form->end();
?>
