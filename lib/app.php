<?php

class App {
	
	use TRequest;
	
	CONST EXPLOIT_DIR            = '../AppExploitation/';
	CONST PUBLIC_DIR             = '../AppPublic/';
	CONST FILE_EXT               = '.php';
	CONST TAG                    = 'appIdCryptedS';
	
	public static $name          = false;
	public static $id            = false;
	public static $mainClass     = false;
	public static $ttl           = 20;
	public static $idCryptedT    = Trace::VOID;
	public static $idCryptedS    = Trace::VOID;
	public static $securityLevel = 0;
	
	public static function init() {
		
		new Mock();
		new App();
		new User();
		
		$result = new Conf();

		if($result === false) return false;
		
		$result = Session::renew();
		
		if($result === false) return false;
		
		$appClass = App::$mainClass;
		
		Fw::requireAppExploitation($appClass);
		
		$app = new $appClass();
		
		if($result === false) return false;
		
		return $app;
	}

	public function __construct() {
	
		$idCryptedS = self::requestVal(self::TAG);
			
		if($idCryptedS === false) return false;
		
		self::$idCryptedS = $idCryptedS;
		
		$this->initFromIdCryptedS();
	}
	
	private function initFromIdCryptedS(){
		
		switch (self::$idCryptedS) {
			
			case 'Install':

				self::$id        = 'Install';
				self::$name      = 'Install';
				self::$mainClass = 'install';
				break;
			case 'TraceView':
				self::$id        = 'TraceView';
				self::$name      = 'TraceView';
				self::$mainClass = 'traceView';
				break;
			default:
				return false;
		}
		return true;
	}
}

?>
