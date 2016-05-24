<?php

trait TCypher {
	    
	private $cypherLog = Trace::VOID;

    private static function cypherSecureVar($var) {
        
        if(is_string($var) === false) return $var;

        if(strstr($var, '\\\\') === false) $var = str_replace("\\", "\\\\'", $var);
        
        $var = str_replace("'", "\\'", $var);
        $var = str_replace("\\\\\\", "\\\\", $var);
        
        return $var;
    }
    
    private static function cypherTraceLogAttributModeCommon($type, $toTrace, $var, $mode, $paramListSuffix = Cypher::PARAM_LIST_SUFFIX){
    	    	
    	$varName = $type.$paramListSuffix;
    	$varName = Conf::$$varName;
    	
    	return self::cypherLogAttributMode($toTrace, $varName->$mode, $var);
    }
    
    private static function cypherLogAttributMode($toTrace, $list, $var, $sepKV = Cypher::SEP_K_V, $sepK = Cypher::SEP_K, $listC = '') {

    	$kvsep = '.';
    	
    	if($var === '') $kvsep = '';
    	
    	foreach($list as $k => $v) {
    		
    		$v = str_replace('__KEY__', $k, $v);
    		$v = $toTrace->$v;
    		$v = self::cypherSecureVar($v);

    		if(is_string($v) === true) {
    				
    			$v = "'".$v."'";
    		}
    		if(is_null($v) === true) {
    		
    			$v = "'".Trace::VOID."'";
    		}
    		$listC .= $var.$kvsep.$k.$sepKV.$v.$sepK;
    	}
    	$end   = (-1 * strlen($sepK));
    	$listC = substr($listC, 0, $end);
    	    	
    	return $listC;
    }
    
    private static function onModeList($toTrace, $detailList, $createMode = Cypher::CREATE_MODE, $matchMode = Cypher::MATCH_MODE,
    		$labelPrefix = Cypher::LABEL_PREFIX, $relationshipPrefix = Cypher::RELATIONSHIP_PREFIX) {
    
    	$onCreateSetListCommon = self::cypherTraceLogAttributModeCommon($labelPrefix, $toTrace, $detailList->var, $createMode);
    	$onCreateSetList       = self::cypherLogAttributMode($toTrace, $detailList->$createMode, $detailList->var);
    	$onMatchSetListCommon  = self::cypherTraceLogAttributModeCommon($relationshipPrefix, $toTrace, $detailList->var, $matchMode);
    	$onMatchSetList        = self::cypherLogAttributMode($toTrace, $detailList->$matchMode, $detailList->var);
 
    	$list = Cypher::EOL."ON CREATE SET ".$onCreateSetListCommon;
    	
    	if(strlen($onCreateSetList) !== 0) $list .= ' , '.$onCreateSetList;
    	
    	$list .= Cypher::EOL."ON MATCH SET ".$onMatchSetListCommon;
    	    	
    	if(strlen($onMatchSetList) !== 0) $list .= ' , '.$onMatchSetList;
    	
    	return $list;
    }
    
    private function cypherTraceLogContent($toTrace) {
    	
    	if(isset($this->json) && is_object($this->json) === true) $toTrace->json = json_encode($this->json);
    	
    	$this->cypherLog = '';

    	foreach(Conf::$nodeList as $detailList) {
    		
    		$attributList     = self::cypherLogAttributMode($toTrace, $detailList->paramList, '', ': ', ', ');
    		$modeList         = self::onModeList($toTrace, $detailList);
    		$this->cypherLog .= Cypher::EOL."MERGE (".$detailList->var.":".$detailList->label." )".Cypher::EOL."CREATE INDEX ON :".$detailList->label."(name)".Cypher::EOL."CREATE INDEX ON :".$detailList->label."(state)"."CREATE INDEX ON :".$detailList->label."(visibility)".Cypher::EOL."CREATE CONSTRAINT ON (".$detailList->var.":".$detailList->label.") ASSERT ".$detailList->var.".uid IS UNIQUE".Cypher::EOL.$modeList.Cypher::EOL.Cypher::EOL;
    	}
    	foreach(Conf::$relationshipList as $detailList) {
 
    		$attributList     = self::cypherLogAttributMode($toTrace, $detailList->paramList, '', ': ', ', ');
    		$modeList         = self::onModeList($toTrace, $detailList);
			$this->cypherLog .= Cypher::EOL."MERGE (".$detailList->start.")-[".$detailList->var.":".$detailList->relationship."]->(".$detailList->end.")".Cypher::EOL."CREATE CONSTRAINT ON (".$detailList->var.":".$detailList->relationship.") ASSERT ".$detailList->var.".uid IS UNIQUE".Cypher::EOL.$modeList.Cypher::EOL.Cypher::EOL;
    	}
    	Cypher::send($this->cypherLog);
    	
    	$this->cypherLog = '';
    	
    	return true;
    }
    
    private function cypherRelationshipListSet($func) {
    
	    $var = self::VARC;
	    
	    foreach(Conf::$eventList->$var->$func as $k => $v) {
	    
	    	self::$relationshipList->$k = $v;
	    }
	    return true;
    }
}

?>
