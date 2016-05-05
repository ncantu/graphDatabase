<?php

class App {
	
	use TRequest;
	
	CONST EXPLOIT_DIR   = '../AppExploitation/';
	CONST PUBLIC_DIR    = '../AppPublic/';
	CONST FILE_EXT      = '.php';
	CONST TAG           = 'appName';
	
	public static $name = false;
	
	public function __construct() {
	
		self::$name = false;
		$appName  = self::requestVal(self::TAG);
			
		if($appName === false) return false;
		
		self::$name = $appName;
	}
}

?>
