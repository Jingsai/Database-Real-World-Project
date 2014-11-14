<?php $this->set('title_for_layout', "Aerodock | Login");?>

<div class="users form">
<?php echo $this->Session->flash('auth'); ?>
<?php echo $this->Form->create('User'); ?>
    <fieldset>
        <legend>
            <?php echo __('Please enter your PipelineID and password'); ?>
        </legend>
        <div class="form-group">
        	<?php echo $this->Form->input('username');?>
      	</div>
        <div class="form-group">
       		<?php echo $this->Form->input('password');?>
       	</div>
    </fieldset>
    <button type="submit" class="btn btn-default">Submit</button>
<?php echo $this->Form->end(); ?>
</div>