<?php

class ModifyPara extends AppModel {

	var $useTable = false;
	public function ReadData($tableid)
    {
    	if ($tableid == 1)
    	{
			$this->setSource('countries');
		}
		else if ($tableid ==2)
		{
			$this->setSource('complexities');
		}
	}
}

?>