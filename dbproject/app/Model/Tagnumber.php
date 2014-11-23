<?php
class Tagnumber extends AppModel
{
	public $actsAs = array('Search.Searchable');

        public $filterArgs = array(
               
		'NO' => array(
                'type' => 'value',
                'field' => 'NO'
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
