<?php

class Mock {
	
	use TRequest;
	
	CONST DIR           = '../mock/';
	CONST FILE_EXT      = '.json';
	CONST TAG           = 'mockName';
	
    public static $mock = false;
		
	public function __construct() {
		
		$mockValue  = self::requestVal(self::TAG);
		self::$mock = false;
		
		if($mockValue === false) return false;
		
		$file = self::DIR.$mockValue.self::FILE_EXT;
		
		if(is_file($file) === false) return false;

		$input      = file_get_contents(self::DIR.$mockValue.self::FILE_EXT);
		self::$mock = json_decode($input);
	}
}

?>
