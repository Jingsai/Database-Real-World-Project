<?php
class Revision extends AppModel
{
	//public $actsAs = array('Containable');
	public $belongsTo = array('Tagmembername');
    //public $belongsTo = array('Tagmembername'=>array('foreignkey'=>'Tagmembername.TAG_Member'));
/*
	public $actsAs = array('Search.Searchable');

	public $uses = array('Revision');
	
        
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

*/

}
