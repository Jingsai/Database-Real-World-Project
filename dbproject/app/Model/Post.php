<?php
class Post extends AppModel{
	
	public $actsAs = array('Search.Searchable');

	public $filterArgs = array(
	 	'no' => array(
		'type' => 'like',
		'field' => 'no'
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
