<?php
class Tagnumber extends AppModel
{
	public $actsAs = array('Search.Searchable');

        public $filterArgs = array(
               
		'no' => array(
                'type' => 'value',
                'field' => 'no'
                ),
		
		'DESCRIOTION' => array(
		'type' => 'like',
		'field' => 'DESCRIPTION'
		),

		
		'SubCategory' => array(	
		'type' => 'like',
		'field' => 'SubCategory'
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
