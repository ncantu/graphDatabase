<?php

class Conf {
    
	use TUser;
	
    CONST CONF_BASENAME_VAR_SUFFIX        = 'Basename';
    CONST CONF_CONTENT_VAR_SUFFIX         = 'Content';
    CONST CYPHER_TYPE                     = 'cypher';
    CONST HTML_TYPE                       = 'html';
    CONST TIMEZONE_DEFAULT                = 'UTC';
    CONST DIR                             = '../conf/';
    CONST EXT                             = '.json';

    public static $objectList;
    public static $actionList;
    public static $emotionList;
    public static $labelList;
    public static $labelParamList;
    public static $relationshipParamList;
    public static $resultDir;
    public static $envName;
    public static $timeZone;
    
    private static $appName;
    
    public function __construct() {

    	date_default_timezone_set(self::TIMEZONE_DEFAULT);
    	
    	Conf::$appName = App::$name;
    	
    	if(Mock::$mock !== false) {

    		$m             = Mock::$mock;
    		User::$id      = $m->userId;
    		Conf::$appName = $m->appName;
    	}
    	User::$idCryptedT = self::secC(User::$id, Trace::SEC_F);
    	    	
        $return = $this->initConf(App::$name);
        
        if($return === false) return false;
    	
		$return = Session::init();
				
		if($return === false) return false;
		
		App::$name = Conf::$appName;
    }
    
    public function secSaltGen($basename){
    	
    	$salt = mcrypt_create_iv(16, MCRYPT_DEV_URANDOM);
    	 
    	return file_put_contents(dirname(__FILE__).DIRECTORY_SEPARATOR.$basename, $salt);
    }
        
    public static function secC($value, $secF){
    	
    	$salt       = file_get_contents(dirname(__FILE__).DIRECTORY_SEPARATOR.'secSalt');
    	$keyBase    = file_get_contents(dirname(__FILE__).DIRECTORY_SEPARATOR.$secF);
    	$iterations = 1000;
    	$key        = pack('H*', hash_pbkdf2('sha256', $keyBase, $salt, $iterations, 32));
    	$iv_size    = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
    	$iv         = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    	$ciphertext = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $key, $value, MCRYPT_MODE_CBC, $iv);
    	$ciphertext = $iv . $ciphertext;
    	 
    	return base64_encode($ciphertext);
    }
    
    public static function secD($value){
    	
    	$ciphertext_dec = base64_decode($value);
    	$iv_dec         = substr($ciphertext_dec, 0, $iv_size);
    	$ciphertext_dec = substr($ciphertext_dec, $iv_size);
    	
    	return mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);
    }
    
    private function initConf($confAppFile){
    	
    	$confContent = file_get_contents(self::DIR.$confAppFile.self::EXT);
    	
    	if($confContent === false) return false;
    	
    	$confObj = json_decode($confContent);
    	
    	if($confObj === false) return false;
    	
    	self::$objectList      = $confObj->objectList;
    	self::$resultDir       = $confObj->resultDir;
		Template::$renderList  = $confObj->renderList;
		$envName               = $confObj->envName;
		self::$envName         = $envName;
		$confEnv               = $confObj->envList->$envName;
		Trace::$errorLevelList = $confEnv->errorLevelList;
		Trace::$errorCodeList  = $confObj->errorCodeList;
		self::$timeZone        = $confObj->timeZone;
		Session::$ttl          = $confObj->sessionTtl;
				
		date_default_timezone_set(self::$timeZone);
    	
    	$result = $this->grapDatabaseConfGet($confObj->graphDatabaseConfBasename);
    	
    	if($result === false) return false;
    	
    	return true;
    }
    
    private function confGet($confBasenameVar){
    
	    $confgraphDatabaseFile    = self::DIR.$confBasenameVar;
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