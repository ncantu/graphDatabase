<?php

class Conf {
    
    CONST CONSTRUCT_CONF_APP_FILE          = 'conf/app.json';
    CONST CONF_BASENAME_VAR_SUFFIX         = 'Basename';
    CONST CONF_CONTENT_VAR_SUFFIX          = 'Content';    
    CONST CYPHER_TYPE                      = 'cypher';
    CONST HTML_TYPE                        = 'html';    
    CONST GRAPH_DATABASE_CONF_BASENAME_VAR = 'graphDatabaseConfBasename';
    
    static public $export;

    public $confObj;
    public $actionList;
    public $emotionList;
    public $labelList;
    public $labelParamList;
    public $relationshipParamList;
    public $confDir;
    public $resultDir;
    public $templateDir;
    public $renderList;

    public function __construct($confAppFile = self::CONSTRUCT_CONF_APP_FILE){

        $return  = $this->initConf($confAppFile);     
        
        if($return === false) return false;
    }
    
    private function initConf($confAppFile){
    	
    	$confContent   = file_get_contents($confAppFile);
    	
    	if($confContent === 0) return false;
    	
    	$this->confObj = json_decode($confContent);
    	
    	if($this->confObj === false) return false;
    	
    	$this->confDir     = $this->confObj->confDir;
    	$this->resultDir   = $this->confObj->resultDir;
    	$this->templateDir = $this->confObj->confDir.$this->confObj->templateDir;
		$this->renderList  = $this->confObj->renderList;	
    	
    	$result  = $this->grapDatabaseConfGet();
    	
    	if($result === false) return false;
    	
    	$result = $this->export();
    	
    	if($result === false) return false;
    	
    	return true;
    }
    
    private function confGet($confBasenameVar){
    
	    $confgraphDatabaseFile    = self::$export->confObj->confDir.self::$export->confObj->confFileBasename;
	    $confgraphDatabaseContent = file_get_contents($confgraphDatabaseFile);
	    
	    if($confgraphDatabaseContent === 0) return false;
	    
	    return json_decode($confgraphDatabaseContent);
	}
	
	private function grapDatabaseConfGet($confBasenameVar = self::GRAPH_DATABASE_CONF_BASENAME_VAR){
		
		$confgraphDatabaseObj = $this->confGet($confBasenameVar);
		
		if($confgraphDatabaseObj === false) return false;
		
		$this->actionList            = $confgraphDatabaseObj->actionList;
		$this->emotionList           = $confgraphDatabaseObj->emotionList;
		$this->labelList             = $confgraphDatabaseObj->labelList;
		$this->labelParamList        = $confgraphDatabaseObj->labelParam;
		$this->relationshipParamList = $confgraphDatabaseObj->relationshipParam;
		
		return true;
	}
    
    private function resultSet($content, $typeDir, $confBasenameVar){

        $typeResulDir = self::$export['resultDir'].self::$export[$typeDir];

        return file_put_contents($content, $typeResulDir.self::$export[$confBasenameVar]);
    }

    private function cypherResultSet($content, $confBasenameVar, $type = self::CYPHER_TYPE){
            
        return $this->resultSet($content, $type, $confBasenameVar);
    }

    private function htmlResultSet($content, $confBasenameVar, $type = self::HTML_TYPE){
            
        return $this->resultSet($content, $type, $confBasenameVar);
    }
    
    public function export(){
    	
    	self::$export = get_object_vars($this);
    	
    	return true;
    }
}

?>