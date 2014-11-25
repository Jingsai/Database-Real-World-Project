<?php
	class Tagmembername extends AppModel
	{
		//public $actsAs = array('Containable');
    	public $hasMany = array('Revision');

		//public $hasMany = array('Revision'
        //=>array('foreignkey'=>'Tagmembername.TAG_Member'));
	}
?>
