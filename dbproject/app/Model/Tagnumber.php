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

		
		'Sub Category' => array(	
		'type' => 'like',
		'field' => 'Sub Category'
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
