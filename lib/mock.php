<?php

class Mock {
	
	use TRequest;
	
	CONST MOCK_DIR = '../mock/';
	CONST MOCK_EXT = '.json';
	CONST MOCK_TAG = 'mockState';
		
	public function __construct() {
		
		$mockValue  = self::val(self::MOCK_TAG);
		Conf::$mock = false;
		
		if($mockValue === false) return false;

		$input      = file_get_contents(self::MOCK_DIR.$mockValue.self::MOCK_EXT);
		Conf::$mock = json_decode($input);
	}
}

?>
