<?php
class Revision extends AppModel
{
	public $actsAs = array('Search.Searchable');

	public $uses = array('Revision', 'Tagnumber');

		

        public $filterArgs = array(
               
		'no' => array(
                'type' => 'value',
                'field' => 'no'
                ),
		
		'ID' => array(
		'type' => 'value',
		'field' => 'ID'
		),

	
		'Description' => array(		
	   	'type' => 'like',
                'field' => 'Description'
                )
        );


        public $validate = array(
        'no' => array(
            'rule' => 'notEmpty'
        ),
        'body' => array(
            'rule' => 'notEmpty'
        )
    );

}
