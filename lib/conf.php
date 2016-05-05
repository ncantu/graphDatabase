<?php

class Conf {
    
    CONST CONSTRUCT_CONF_APP_FILE  = '../conf/app.json';
    CONST CONF_BASENAME_VAR_SUFFIX = 'Basename';
    CONST CONF_CONTENT_VAR_SUFFIX  = 'Content';
    CONST CYPHER_TYPE              = 'cypher';
    CONST HTML_TYPE                = 'html';
    CONST TIMEZONE_DEFAULT         = 'UTC';

    public static $securityLevel = 0;
    public static $mock          = false;
    public static $userId;
    public static $sessionId;
    public static $appName;
    public static $objectList;
    public static $actionList;
    public static $emotionList;
    public static $labelList;
    public static $labelParamList;
    public static $relationshipParamList;
    public static $confDir;
    public static $resultDir;
    public static $templateDir;
    public static $renderList;
    public static $env;
    public static $errorCodeList;
    public static $logDir;
    public static $logFormat;
    public static $timeZone;
    
    private static $userIdCryptedT;
    private static $userIdCryptedS;
    private static $sessionIdCryptedT;
    private static $sessionIdCryptedS;

    public function __construct($confAppFile = self::CONSTRUCT_CONF_APP_FILE) {

    	date_default_timezone_set(self::TIMEZONE_DEFAULT);
    	
    	if(self::$mock !== false) {
    	
    		self::$userId  = self::$mock->userId;
    		self::$appName = self::$mock->appName;
    	}
    	self::$userIdCryptedT    = $this->secC(self::$userId, Trace::SEC_F);
    	self::$sessionIdCryptedT = $this->secC(SID, Trace::SEC_F);
    	
		$session = Session::init();
				
		if($session === false) return false;
    	    	
        $return = $this->initConf($confAppFile);
        
        if($return === false) return false;
    }
        
    private function secC($value, $secF){
    	
    	$keyBase    = file_get_contents(dirname(__FILE__).DIRECTORY_SEPARATOR.$secF);
    	$key        = pack('H*', hash('SHA256', $keyBase, true));
    	$iv_size    = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
    	$iv         = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    	$ciphertext = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $key, $value, MCRYPT_MODE_CBC, $iv);
    	$ciphertext = $iv . $ciphertext;
    	
    	return base64_encode($ciphertext);
    }
    
    private function secD($value){
    	
    	$ciphertext_dec = base64_decode($value);
    	$iv_dec         = substr($ciphertext_dec, 0, $iv_size);
    	$ciphertext_dec = substr($ciphertext_dec, $iv_size);
    	
    	return mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);
    }
    
    private function initConf($confAppFile){
    	
    	$confContent = file_get_contents($confAppFile);
    	
    	if($confContent === false) return false;
    	
    	$confObj = json_decode($confContent);
    	
    	if($confObj === false) return false;
    	
    	self::$objectList    = $confObj->objectList;
    	self::$confDir       = $confObj->confDir;
    	self::$resultDir     = $confObj->resultDir;
    	self::$templateDir   = $confObj->confDir.$confObj->templateDir;
		self::$renderList    = $confObj->renderList;
		$envName             = $confObj->envName;
		self::$env           = $confObj->envList->$envName;
		self::$errorCodeList = $confObj->errorCodeList;
		self::$logDir		 = $confObj->logDir;
		self::$logFormat     = $confObj->logFormat;
		self::$timeZone      = $confObj->timeZone;
		Session::$ttl        = $confObj->sessionTtl;
				
		date_default_timezone_set(self::$timeZone);
    	
    	$result = $this->grapDatabaseConfGet($confObj->graphDatabaseConfBasename);
    	
    	if($result === false) return false;
    	
    	return true;
    }
    
    private function confGet($confBasenameVar){
    
	    $confgraphDatabaseFile    = self::$confDir.$confBasenameVar;
	    $confgraphDatabaseContent = file_get_contents($confgraphDatabaseFile);
	    
	    if($confgraphDatabaseContent === false) return false;
	    
	    return json_decode($confgraphDatabaseContent);
	}
	
	private function grapDatabaseConfGet($confBasenameVar){
		
		$confGraphDatabaseObj = $this->confGet($confBasenameVar);
		
		if($confGraphDatabaseObj === false) return false;
		
		self::$actionList            = $confGraphDatabaseObj->actionList;
		self::$emotionList           = $confGraphDatabaseObj->emotionList;
		self::$labelList             = $confGraphDatabaseObj->labelList;
		self::$labelParamList        = $confGraphDatabaseObj->labelParamList;
		self::$relationshipParamList = $confGraphDatabaseObj->relationshipParamList;
		
		return true;
	}
    
    private function resultSet($content, $typeDir, $confBasenameVar){

        $typeResulDir = self::$resultDir.self::$$typeDir;

        return file_put_contents($content, $typeResulDir.self::$export[$confBasenameVar]);
    }
}

?>