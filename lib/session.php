<?php

class Session {
	
	use TTrace;
	
	CONST SECURITY_LEVEL_TAG  = 'securityLevel';
	CONST USER_ID_CRIPTED_TAG = 'userIdCrypted';
	CONST ID_CRIPTED_TAG      = 'sessionIdCrypted';
	CONST START_TIME_TAG      = 'startTime';
	CONST END_TIME_TAG        = 'endTime';
	CONST HISTORY_TAG         = 'history';
	CONST SEC_F               = 'secS05052016';
	
	public static $ttl        = 20;
		
	public static function init() {
		
		Trace::traceStartStatic(__LINE__, __METHOD__, __CLASS__);
		 
		ini_set('session.use_trans_sid', false);
		ini_set('url_rewriter.tags','');
		session_start();
	
		if (isset($_SESSION[self::HISTORY_TAG]) === false || empty($_SESSION[self::HISTORY_TAG]) === true) {
			
			Trace::traceInfoStatic(__LINE__, __METHOD__, __CLASS__);
	
			$_SESSION[self::HISTORY_TAG]        = array();
			$_SESSION[self::SECURITY_LEVEL_TAG] = 0;
			$_SESSION[self::START_TIME_TAG]     = time();
			
			self::securityLevelUpdate(5);
		}
		else Trace::traceInfoStatic(__LINE__, __METHOD__, __CLASS__);
		
		Conf::$sessionIdCryptedT        = Conf::secC(session_id(), Trace::SEC_F);
		Conf::$userIdCryptedS           = Conf::secC(Conf::$userId, Session::SEC_F);
		Conf::$sessionIdCryptedS        = Conf::secC(session_id(), Session::SEC_F);
		$_SESSION[self::ID_CRIPTED_TAG] = Conf::$userIdCryptedS;
		$_SESSION[self::ID_CRIPTED_TAG] = Conf::$sessionIdCryptedS;
		$history 						= $_SESSION;
		
		unset($history[self::HISTORY_TAG]);
		
		$_SESSION[self::HISTORY_TAG][] = $history;
				
		return self::expireVerif();
	}
	public static function expireVerif() {
		
		Trace::traceStartStatic(__LINE__, __METHOD__, __CLASS__);
		
		$_SESSION[self::END_TIME_TAG] = $_SESSION[self::START_TIME_TAG] + self::$ttl;
		
		if($_SESSION[self::END_TIME_TAG] < time()) {
		
			session_destroy();
			
			return Trace::traceEndValueStatic(__LINE__, __METHOD__, __CLASS__, false);
		}
		return Trace::traceEndOKStatic(__LINE__, __METHOD__, __CLASS__);
	}
	public static function renew() {
		
		Trace::traceStartStatic(__LINE__, __METHOD__, __CLASS__);
	
		$_SESSION[self::START_TIME_TAG] = time();
		$_SESSION[self::END_TIME_TAG]   = $_SESSION[self::START_TIME_TAG] + self::$ttl;
	
		return Trace::traceEndOKStatic(__LINE__, __METHOD__, __CLASS__);
	}
			
	static public function securityLevelUpdate($add){
		
		Trace::traceStartStatic(__LINE__, __METHOD__, __CLASS__);
		
		$_SESSION[self::SECURITY_LEVEL_TAG] += $add;
		
		return Trace::traceEndOKStatic(__LINE__, __METHOD__, __CLASS__);
	}
}

?>