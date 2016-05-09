<?php

class Mock {
	
	use TRequest;
	
	CONST DIR              = '../mock/';
	CONST FILE_EXT         = '.json';
	CONST TAG              = 'name';
	CONST USER_ID_TAG      = 'userId';
	CONST APP_NAME_TAG     = 'appName';
	
    public static $state   = false;
    public static $userId  = false;
    public static $appName = false;
    public static $name    = false;
		
	public function __construct() {
		
		$mockValue   = self::requestVal(self::TAG);
		self::$state = false;
		
		if($mockValue === false) return false;
		
		$file = self::DIR.$mockValue.self::FILE_EXT;
		
		if(is_file($file) === false) return false;

		$input         = file_get_contents(self::DIR.$mockValue.self::FILE_EXT);
		$mock          = json_decode($input);
		self::$state   = true;
		self::$name    = $mock->name;
		self::$userId  = $mock->userId;
		self::$appName = $mock->appName;
	}
}

?>
