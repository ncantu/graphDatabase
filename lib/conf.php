<?php

class Conf {
    
    CONST CONSTRUCT_CONF_APP_FILE  = '../conf/app.json';
    CONST CONF_BASENAME_VAR_SUFFIX = 'Basename';
    CONST CONF_CONTENT_VAR_SUFFIX  = 'Content';
    CONST CYPHER_TYPE              = 'cypher';
    CONST HTML_TYPE                = 'html';
    
    public static $appName;
    public static $userId;
    public static $mockState;
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
    public static $securityLevel         = 0;

    public function __construct($input, $confAppFile = self::CONSTRUCT_CONF_APP_FILE) {

    	Conf::$appName   = $input->appName;
    	Conf::$userId    = $input->userId;
    	Conf::$mockState = $input->mockState;
        $return          = $this->initConf($confAppFile);
        
        if($return === false) return false;
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
		self::$env           = $confObj->envList->$env;
		self::$errorCodeList = $confObj->errorCodeList;
		self::$logDir		 = $confObj->logDir;
		self::$logFormat     = $confObj->logFormat;
    	
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