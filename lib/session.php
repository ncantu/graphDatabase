<?php

class Session {
	
	use TTrace;

	CONST HISTORY_TAG         = 'history';
	CONST USER_ID_CRIPTED_TAG = 'userIdCrypted';
	CONST ID_CRIPTED_TAG      = 'sessionIdCrypted';
	CONST START_TIME_TAG      = 'startTime';
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
			User::$securityLevel 			    = 0;
			$_SESSION[self::START_TIME_TAG]     = time();
			
			self::userSecurityLevelupdate(5);
		}
		else Trace::traceInfoStatic(__LINE__, __METHOD__, __CLASS__);
		
		User::$sessionIdCryptedT             = Conf::secC(session_id(), Trace::SEC_F);
		User::$idCryptedS                    = Conf::secC(User::$id, Session::SEC_F);
		User::$sessionIdCryptedS             = Conf::secC(session_id(), Session::SEC_F);
		$_SESSION[self::USER_ID_CRIPTED_TAG] = User::$idCryptedS;
		$_SESSION[self::ID_CRIPTED_TAG]      = User::$sessionIdCryptedS;
		User::$sessionStart                  = $_SESSION[self::START_TIME_TAG];
		$history 						     = $_SESSION;
		
		unset($history[self::HISTORY_TAG]);
		
		$_SESSION[self::HISTORY_TAG][] = $history;
				
		return self::expireVerif();
	}
	public static function expireVerif() {
		
		Trace::traceStartStatic(__LINE__, __METHOD__, __CLASS__);
		
		User::$sessionEnd = User::$sessionStart + self::$ttl;

		$result = self::userSave();
		
		if($result === false) return false;
		
		if(User::$sessionEnd < time()) {
		
			session_destroy();
			
			return Trace::traceEndValueStatic(__LINE__, __METHOD__, __CLASS__, false);
		}
		return Trace::traceEndOKStatic(__LINE__, __METHOD__, __CLASS__);
	}
	
	public static function renew() {
		
		Trace::traceStartStatic(__LINE__, __METHOD__, __CLASS__);
	
		$_SESSION[self::START_TIME_TAG] = time();
		User::$sessionEnd               = User::$sessionStart + self::$ttl;
		$result                         = self::userSave();
		
		if($result === false) return false;
	
		return Trace::traceEndOKStatic(__LINE__, __METHOD__, __CLASS__);
	}
}

?>