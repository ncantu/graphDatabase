<?php

class App {
	
	use TRequest;
	
	CONST EXPLOIT_DIR   = '../AppExploitation/';
	CONST PUBLIC_DIR    = '../AppPublic/';
	CONST FILE_EXT      = '.php';
	CONST TAG           = 'appName';
	
	public static $name = false;
	
	public static function init($appClass) {
		
		new App();
		new Mock();
		
		$result = new Conf();
		
		if($result === false) return false;
		
		$result = Session::renew();
		
		if($result === false) return false;
		
		$app = new $appClass();
		
		if($result === false) return false;
		
		return $app;
	}

	public function __construct() {
	
		self::$name = false;
		$appName  = self::requestVal(self::TAG);
			
		if($appName === false) return false;
		
		self::$name = $appName;
	}
}

?>
