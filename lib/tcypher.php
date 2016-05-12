<?php

trait TCypher {
	    
	private $cypherLog = Trace::VOID;

    private function cypherSecureVar($var) {
        
        if(is_string($var) === false) return $var;

        $var = str_replace("\\", "\\\\'", $var);
        $var = str_replace("'", "\\'", $var);
        
        return $var;
    }
    
    private static function cypherTraceLogAttributModeCommon($type, $toTrace, $var, $mode){
    	    	
    	$var = $type.$ParamList;
    	$var = Conf::$$var;
    	
    	return self::cypherLogAttributMode($toTrace, $var->$mode, $var);
    }
    
    private static function cypherLogAttributMode($toTrace, $list, $var, $sepKV = '= ', $sepK = ' , ', $listC = '') {
    	
    	foreach($list as $k => $v) {
    		
    		$v = $toTrace->$v;
    		$v = $this->cypherSecureVar($v);
    	
    		if(is_string($v) === true) {
    				
    			$v = "'".$v."'";
    		}
    		$listC .= $var.'.'.$k.$sepKV.$v.$sepK;
    	}
    	$listC = substr($list, 0, (-1 * strlen($sepK)));
    	
    	return $listC;
    }
    
    private static function onModeList($toTrace, $detailList, $createMode = 'onCreateSetList', $matchMode = 'onMatchSetList', $labelPrefix = 'label', $relationshipPrefix = 'relationship') {
    
    	$onCreateSetListCommon = self::cypherTraceLogAttributModeCommon($labelPrefix, $toTrace, $detailList->var, $createMode);
    	$onCreateSetList       = self::cypherLogAttributMode($toTrace, $detailList->$createMode, $detailList->var);
    	$onMatchSetListCommon  = self::cypherTraceLogAttributModeCommon($relationshipPrefix, $type, $toTrace, $detailList->var, $matchMode);
    	$onMatchSetList        = self::cypherLogAttributMode($toTrace, $detailList->$matchMode, $detailList->var);
 
    	return "\n"."ON CREATE SET ".$onCreateSetListCommon." , ".$onCreateSetList."\n"."ON MATCH SET ".$onMatchSetListCommon." , ".$onMatchSetList;
    }
    
    private function cypherTraceLogContent($toTrace) {

    	foreach(Conf::$nodeList as $detailList) {
    		
    		$attributList     = self::cypherLogAttributMode($toTrace, $detailList->paramList, $detailList->var, ': ', ', ');
    		$modeList         = self::onModeList($toTrace, $detailList);
    		$this->cypherLog .= "\n"."MERGE (".$detailList->var.":".$detailList->label." { ".$attributList." })"."\n".$modeList."\n\n";
    	}
    	foreach(Conf::$relationshipList as $detailList) {
 
    		$attributList     = self::cypherLogAttributMode($toTrace, $detailList->paramList, $detailList->var, ': ', ', ');
    		$modeList         = self::onModeList($toTrace, $detailList);
			$this->cypherLog .= "\n"."MERGE (".$detailList->start.")-[".$detailList->var.":".$detailList->relationship."]->(".$detailList->end.")"."\n".$modeList."\n\n";
    	}
    }
}

?>
