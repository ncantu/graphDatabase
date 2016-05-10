<?php

trait TCypher {
	

    private $cypherLabelParamList;
    private $cypherRelationshipParamList;


    private function cypherSecureVar($var) {
        
    	if(is_string($var) === false) return $var;

        $var = str_replace("\\", "\\\\'", $var);
        $var = str_replace("'", "\\'", $var);
        
        return $var;
    }

    private function cypherAttributGet($list, $str = '') {

		foreach(Conf::$labelParamList as $k => $v){

            $v = $this->cypherSecureVar($v);

            if(is_string($v) === true) {

				$v = "'".$v."'";
            }

			$str .= $k.': '.$v .', ';
		}      
		return $str;
    }

	private function cypherLabelParamListGet() {
		
		$this->cypherLabelParamList = $this->cypherAttributGet(Conf::$labelParamList);

		return true;
	}

	private function cypherRelationshipParamListGet() {

		$this->cypherLabelParamList = $this->cypherAttributGet(Conf::$cypherRelationshipParamList);

		return true;
	}

    private function cypherTraceLogContent($toTrace) {

    	foreach($toTrace as $k => $v) {
                
            $v   = $this->cypherSecureVar($v);
            $tag = '\'{'.$k.'}\'';
                
            if(is_string($v) === true) {
                    
                $this->cypherLog = str_replace($tag, '\''.$v.'\'', $this->cypherLog);
            }
            else $this->cypherLog = str_replace($tag, $v, $this->cypherLog);
        }
        $this->cypherLabelParamListGet();        
		$this->cypherLog = str_replace('{cypherLabelParamList}', $this->cypherLabelParamList, $this->cypherLog);

    	$this->cypherRelationshipParamListGet();
		$this->cypherLog = str_replace('{cypherRelationshipParamList}', $this->cypherRelationshipParamList, $this->cypherLog);

        echo $this->cypherLog;
        exit();
        
        return true;
    }
}

?>