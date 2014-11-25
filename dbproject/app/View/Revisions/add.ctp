<h1>Add New Tag</h1>

<?php
echo $this->Form->create('Revision');
echo $this->Form->hidden('id');
?>

<table>
<tr> <td> </td> </tr>

</table>

echo $this->Form->input('no');
echo $this->Form->input('rev');
echo $this->Form->input('material');
echo $this->Form->end('Save Revisoin');
?>
