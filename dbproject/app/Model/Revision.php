<?php
class Revision extends AppModel
{


	public $actsAs = array('Search.Searchable');

        public $filterArgs = array(
               
		'no' => array(
                'type' => 'value',
                'field' => 'no'
                ),
		
		'ID' => array(
		'type' => 'value',
		'field' => 'ID'
		),

		
		'material' => array(	
		'type' => 'value',
		'field' => 'material'
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
