<?php

class Mock {
	
	use TRequest;
	
	CONST DIR                      = '../mock/';
	CONST FILE_EXT                 = '.json';
	CONST TAG                      = 'mockName';
	
    public static $state           = false;
    public static $userIdCryptedS  = false;
    public static $appIdCryptedS   = false;
    public static $name            = false;
		
	public function __construct() {
		
		$mockValue   = self::requestVal(self::TAG);
		self::$state = false;
		
		if($mockValue === false) return false;
		
		$file = self::DIR.$mockValue.self::FILE_EXT;
		
		if(is_file($file) === false) return false;

		$input                = file_get_contents(self::DIR.$mockValue.self::FILE_EXT);
		$mock                 = json_decode($input);
		self::$state          = true;
		self::$name           = $mock->name;
		self::$userIdCryptedS = $mock->userIdCryptedS;
		self::$appIdCryptedS  = $mock->userIdCryptedS;
		$_REQUEST[App::TAG]   = self::$appIdCryptedS;
		$_REQUEST[User::TAG]  = self::$userIdCryptedS;
	}
}

?>
