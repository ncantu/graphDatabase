<?php

class Session {
	
	use TTrace;
	
	CONST SECURITY_LEVEL_TAG  = 'securityLevel';
	CONST USER_ID_CRIPTED_TAG = 'userIdCrypted';
	CONST ID_CRIPTED_TAG      = 'sessionIdCrypted';
	CONST START_TIME_TAG      = 'startTime';
	CONST HISTORY_TAG         = 'history';
	CONST COUNT_TAG           = 'count';
	CONST HISTORY_TAG         = 'count';
	CONST SEC_F               = 'secS05052016';
	
	public static $ttl        = 20;
		
	public static function init() {
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		 
		ini_set('session.use_trans_sid', false);
		ini_set('url_rewriter.tags','');
		session_start();
	
		if (isset($_SESSION[self::HISTORY_TAG]) === false || empty($_SESSION[self::HISTORY_TAG]) === true) {
			
			$this->traceInfo(__LINE__, __METHOD__, __CLASS__);
	
			$_SESSION[self::HISTORY_TAG]        = array();
			$_SESSION[self::COUNT_TAG]          = 0;
			$_SESSION[self::SECURITY_LEVEL_TAG] = 0;
			$_SESSION[self::START_TIME_TAG]     = time();
			
			$this->securityLevelUpdate(5);
		}
		else $this->traceInfo(__LINE__, __METHOD__, __CLASS__);
		
		Conf::$userIdCryptedS                   = $this->secC(Conf::$userId, Session::SEC_F);
		Conf::$sessionIdCryptedS                = $this->secC(SID, Session::SEC_F);
		$_SESSION[self::ID_CRIPTED_TAG]         = Conf::$userIdCryptedS;
		$_SESSION[self::SESSION_ID_CRIPTED_TAG] = Conf::$sessionIdCryptedS;
		$_SESSION[self::COUNT_TAG]++;
		
		$history = $_SESSION;
		unset($history[self::HISTORY_TAG]);
		
		$_SESSION[self::HISTORY_TAG][] = $history;
		
		return self::expireUpdate();
	}
	public static function expireUpdate() {
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		
		$_SESSION[self::START_END_TAG] = $_SESSION[self::START_TIME_TAG] + self::$ttl;
		
		if($_SESSION[self::START_END_TAG] < time()) {
		
			session_destroy();
			
			return $this->traceEndValue(__LINE__, __METHOD__, __CLASS__, false);
		}
		return $this->traceEndOK(__LINE__, __METHOD__, __CLASS__);
	}
	public static function renew() {
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
	
		$_SESSION[self::START_TIME_TAG] = time();
		$_SESSION[self::START_END_TAG]  = $_SESSION[self::START_TIME_TAG] + self::$ttl;
	
		return $this->traceEndOK(__LINE__, __METHOD__, __CLASS__);
	}
			
	static public function securityLevelUpdate($add){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		
		$_SESSION[self::SECURITY_LEVEL_TAG] += $add;
		
		return $this->traceEndOK(__LINE__, __METHOD__, __CLASS__);
	}
}

?>