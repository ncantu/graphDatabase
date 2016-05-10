<?php

class User {
	
	use TUser;
	
	CONST TAG                    = 'userIdCryptedS';

	public static $securityLevel = 0;
	public static $idCryptedT    = Trace::VOID;
	public static $idCryptedS    = Trace::VOID;
	public static $id;
	public static $name;
	public static $history       = array();

	public function __construct() {
	
		$idCryptedS = self::requestVal(self::TAG);
			
		if($idCryptedS === false) return false;
	
		self::$idCryptedS = $idCryptedS;
	
		$this->initFromIdCryptedS();
	}
	
	private function initFromIdCryptedS(){
	
		self::$id   = 'Anonymous';
		self::$name = 'Anonymous';
	
		return true;
	}
}
?>