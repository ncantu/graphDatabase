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
	    $str .= '{cypherVar}'.'_'.$k.'= '.$v .' , ';
	}      
	$str = subtr($str, 0, -3)."\n";

	return $str;
    }

    private function cypherLabelParamListContext($cypherVar, $tag = '{cypherVar}'){

    	$traceVar        = str_replace($tag, $cypherVar, $this->cypherLabelParamList);		
	$this->cypherLog = str_replace('{'.$cypherVar.'_LabelParamList}', $traceVar, $this->cypherLog);

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
	$this->cypherLabelParamList        = $this->cypherAttributGet(Conf::$labelParamList);
	$this->cypherRelationshipParamList = $this->cypherAttributGet(Conf::$cypherRelationshipParamList);

	$this->cypherLabelParamListContext('t');
	$this->cypherLabelParamListContext('tdy');
	$this->cypherLabelParamListContext('tY');
	$this->cypherLabelParamListContext('tmon');
	$this->cypherLabelParamListContext('tdm');
	$this->cypherLabelParamListContext('tH');
	$this->cypherLabelParamListContext('tH');
	$this->cypherLabelParamListContext('tmin');
	$this->cypherLabelParamListContext('ts');
	$this->cypherLabelParamListContext('evt');
	$this->cypherLabelParamListContext('code');
	$this->cypherLabelParamListContext('req');
	$this->cypherLabelParamListContext('tr');
	$this->cypherLabelParamListContext('bt');
	$this->cypherLabelParamListContext('i');
	$this->cypherLabelParamListContext('c');
	$this->cypherLabelParamListContext('m');
	$this->cypherLabelParamListContext('l');
	$this->cypherLabelParamListContext('var');
	$this->cypherLabelParamListContext('cf');
	$this->cypherLabelParamListContext('app');
	$this->cypherLabelParamListContext('hApp');
	$this->cypherLabelParamListContext('env');
	$this->cypherLabelParamListContext('u');
	$this->cypherLabelParamListContext('uh');
	$this->cypherLabelParamListContext('hClient');
	$this->cypherLabelParamListContext('ss');
	$this->cypherLabelParamListContext('ssClient');
	$this->cypherLabelParamListContext('ssApp');
	$this->cypherLabelParamListContext('mock');

        return true;
    }
}

?>
