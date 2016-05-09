<?php

class Session {
	
	use TTrace;

	CONST HISTORY_TAG         = 'history';
	CONST USER_ID_CRIPTED_TAG = 'userIdCrypted';
	CONST ID_CRIPTED_TAG      = 'sessionIdCrypted';
	CONST APP_ID_CRIPTED_TAG  = 'appIdCrypted';
	CONST START_TIME_TAG      = 'startTime';
	CONST SEC_F               = 'secS05052016';
	
	public static $startTime;
	public static $endTime;
	public static $userId;
	public static $appId;
	public static $id;
	public static $idCryptedS;
	public static $idCryptedT;
		
	public static function init() {
		
		Trace::traceStartStatic(__LINE__, __METHOD__, __CLASS__);
		 
		ini_set('session.use_trans_sid', false);
		ini_set('url_rewriter.tags','');
		session_start();
	
		if (isset($_SESSION[self::HISTORY_TAG]) === false || empty($_SESSION[self::HISTORY_TAG]) === true) {
			
			Trace::traceInfoStatic(__LINE__, __METHOD__, __CLASS__);
	
			$_SESSION[self::HISTORY_TAG]    = array();
			User::$securityLevel 			= 0;
			$_SESSION[self::START_TIME_TAG] = time();
			self::$userId					= User::$id;
			self::$appId					= App::$id;
			self::$id		         		= session_id();
			self::$appId		         	= App::id;
			
			self::userSecurityLevelupdate(5);
		}
		else Trace::traceInfoStatic(__LINE__, __METHOD__, __CLASS__);
		
		User::$idCryptedT                    = Conf::secC(User::$id, Trace::SEC_F);
		User::$idCryptedS                    = Conf::secC(self::$id, Session::SEC_F);
		
		App::$idCryptedT                     = Conf::secC(App::$id, Trace::SEC_F);
		App::$idCryptedS                     = Conf::secC(App::$id, Session::SEC_F);
		
		self::$idCryptedS                    = Conf::secC(self::$id, Session::SEC_F);
		$_SESSION[self::USER_ID_CRIPTED_TAG] = User::$idCryptedS;
		$_SESSION[self::ID_CRIPTED_TAG]      = self::$idCryptedS;
		$_SESSION[self::APP_ID_CRIPTED_TAG]  = App::$idCryptedS;
		self::$startTime                     = $_SESSION[self::START_TIME_TAG];
		$history 						     = $_SESSION;
		
		unset($history[self::HISTORY_TAG]);
		
		$_SESSION[self::HISTORY_TAG][] = $history;
				
		return self::expireVerif();
	}
	public static function expireVerif() {
		
		Trace::traceStartStatic(__LINE__, __METHOD__, __CLASS__);
		
		self::$endTime = self::$startTime + App::$ttl;

		$result = self::userSave();
		
		if($result === false) return false;
		
		if(self::$endTime < time()) {
		
			session_destroy();
			
			return Trace::traceEndValueStatic(__LINE__, __METHOD__, __CLASS__, false);
		}
		return Trace::traceEndOKStatic(__LINE__, __METHOD__, __CLASS__);
	}
	
	public static function renew() {
		
		Trace::traceStartStatic(__LINE__, __METHOD__, __CLASS__);
	
		$_SESSION[self::START_TIME_TAG] = time();
		self::$startTime                = $_SESSION[self::START_TIME_TAG];
		self::$endTime                  = self::$startTime + App::$ttl;
		$result                         = self::userSave();
		
		if($result === false) return false;
	
		return Trace::traceEndOKStatic(__LINE__, __METHOD__, __CLASS__);
	}
}

?>