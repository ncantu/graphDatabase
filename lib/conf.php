<?php

class Conf {
    
    CONST CONSTRUCT_CONF_APP_FILE                                          = 'conf/app.json';
    CONST CONF_BASENAME_VAR_SUFFIX                                         = 'Basename';
    CONST CONF_CONTENT_VAR_SUFFIX                                          = 'Content';    
    CONST CYPHER_TYPE                                                      = 'cypher';
    CONST HTML_TYPE                                                        = 'html';
    
    CONST DELETE_ALL_CYPHER_CONF_TEMPLATE_BASENAME_VAR                     = 'deleteAllCypherConfTemplateBasename';
    CONST CREATE_NODE_WITH_AUTOINCREMENT_CYPHER_CONF_TEMPLATE_BASENAME_VAR = 'createNodeWithAutoIncrementCypherConfTemplateBasename';
    CONST LABEL_WITH_AUTORINCREMENT_CYPHER_CONF_TEMPLATE_BASENAME_VAR      = 'labelsWithAutoIncrementCypherConfTemplateBasename';
    
    CONST ATTRIBUT_LIST_HTML_TEMPLATE_BASENAME_VAR                         = 'attributListHtmlTemplateBasename';
    CONST POSTIT_HTML_TEMPLATE_BASENAME_VAR                                = 'postitHtmlTemplateBasename';
    CONST POSTIT_LIST_HTML_TEMPLATE_BASENAME_VAR                           = 'postitListHtmlTemplateBasename';
    
    CONST GRAPH_DATABASE_CONF_BASENAME_VAR								   = 'graphDatabaseConfBasename';
        
    private $confObj;
    
    public $actionList;
    public $emotionList;
    public $labelList;
    public $labelParamList;
    public $relationshipParamList;

    public $deleteAllCypherConfTemplateContent                            = '';
    public $createNodeWithAutoIncrementCypherConfTemplateContent          = '';
    public $labelsWithAutoIncrementCypherConfTemplateContent              = '';

    public $attributListHtmlTemplateContent                               = '';
    public $postitHtmlTemplateContent                                     = '';
    public $postitListHtmlTemplateContent                                 = '';

    public function __construct($confAppFile = self::CONSTRUCT_CONF_APP_FILE){

        $return  = $this->initConf($confAppFile);     
        
        if($return === false) return false;

        $return  = $this->initTemplateCypher();     
        
        if($return === false) return false;

        $return  = $this->initTemplateHtml();     
        
        if($return === false) return false;
    }
    
    private function initConf($confAppFile){
    	
    	$confContent   = file_get_contents($confAppFile);
    	
    	if($confContent === 0) return false;
    	
    	$this->confObj = json_decode($confContent);
    	
    	if($this->confObj === false) return false;
    	
    	$return  = $this->grapDatabaseConfGet();
    	
    	if($return === false) return false;
    	
    	return true;
    }
    
    private function initTemplateCypher(){
    	
    	$return  = $this->deleteAllCypherConfTemplateContentGet();
    	
    	if($return === false) return false;
    	
    	$return  = $this->createNodeWithAutoIncrementCypherConfTemplateContentGet();
    	
    	if($return === false) return false;
    	
    	$return  = $this->labelsWithAutoIncrementCypherConfTemplateContentGet();
    	
    	return true;
    }
    
    private function initTemplateHtml(){
    	
       	$return  = $this->attributListHtmlTemplateContentGet();
    	
    	if($return === false) return false;
    	
    	$return  =  $this->postitHtmlTemplateContentGet();
    	
    	if($return === false) return false;
    	
    	$return  = $this->postitListHtmlTemplateContentGet();
    	
    	if($return === false) return false;
    	
    	return true;
    }
    
    private static function BasenameVarSuffixTocontentVarSuffix($confBasenameVar, $basenameVarSuffix = self::CONF_BASENAME_VAR_SUFFIX, $contentVarSuffix = self::CONF_CONTENT_VAR_SUFFIX) {
    	
    	return str_replace($basenameVarSuffix, $contentVarSuffix, $confBasenameVar);
    }
    
    private function confGet($confBasenameVar){
    
	    $confgraphDatabaseFile    = $this->confObj->confDir.$this->confObj->confFileBasename;
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

    private function confTemplateGet($typeDir, $confBasenameVar){

        $var                 = self::BasenameVarSuffixTocontentVarSuffix($confBasenameVar);
        $confTemplateDir     = $this->confObj->confDir.$this->confObj->templateDir;
        $typeConfTemplateDir = $confTemplateDir.$this->confObj->$typeDir;
        $this->$var          = file_get_contents($typeConfTemplateDir.$this->confObj->$confBasenameVar);
        
        if($this->$var === 0) return false;
            
        return true;
    }

    private function cypherConfTemplateGet($confBasenameVar, $type = self::CYPHER_TYPE){
                        
        return $this->confTemplateGet($type, $confBasenameVar);
    }
    
    private function deleteAllCypherConfTemplateContentGet($confBasename = self::DELETE_ALL_CYPHER_CONF_TEMPLATE_BASENAME_VAR){
        
        return $this->cypherConfTemplateGet($confBasename);
    }
    
    private function createNodeWithAutoIncrementCypherConfTemplateContentGet($confBasenameVar = self::CREATE_NODE_WITH_AUTOINCREMENT_CYPHER_CONF_TEMPLATE_BASENAME_VAR){
        
        return $this->cypherConfTemplateGet($confBasenameVar);
    }
    
    private function labelsWithAutoIncrementCypherConfTemplateContentGet($confBasenameVar = self::LABEL_WITH_AUTORINCREMENT_CYPHER_CONF_TEMPLATE_BASENAME_VAR){
        
        $this->cypherConfTemplateGet($confBasenameVar);
    }

    private function htmlConfTemplateGet($confBasenameVar, $type = self::HTML_TYPE){
            
        return $this->confTemplateGet($type, $confBasenameVar);
    }

    private function attributListHtmlTemplateContentGet($confBasenameVar = self::ATTRIBUT_LIST_HTML_TEMPLATE_BASENAME_VAR){
        
        return $this->htmlConfTemplateGet($confBasenameVar);
    }
    
    private function postitHtmlTemplateContentGet($confBasenameVar = self::POSTIT_HTML_TEMPLATE_BASENAME_VAR){
        
        return $this->htmlConfTemplateGet($confBasenameVar);
    }
    
    private function postitListHtmlTemplateContentGet($confBasenameVar = self::POSTIT_LIST_HTML_TEMPLATE_BASENAME_VAR){
        
        return $this->htmlConfTemplateGet($confBasenameVar);
    }
    
    private function resultSet($content, $typeDir, $confBasenameVar){

        $typeResulDir = $this->confObj->resultDir.$this->confObj->$typeDir;

        return file_put_contents($content, $typeResulDir.$this->confObj->$confBasenameVar);
    }

    private function cypherResultSet($content, $confBasenameVar, $type = self::CYPHER_TYPE){
            
        return $this->resultSet($content, $type, $confBasenameVar);
    }

    private function htmlResultSet($content, $confBasenameVar, $type = self::HTML_TYPE){
            
        return $this->resultSet($content, $type, $confBasenameVar);
    }
}

?>