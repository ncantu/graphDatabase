<?php

trait TCypher {
    
    private $cypherLabelParamListCreate;
    private $cypherLabelParamListMatch;
    private $cypherRelationshipParamListCreate;
    private $cypherRelationshipParamListMatch;

    private function cypherSecureVar($var) {
        
        if(is_string($var) === false) return $var;

        $var = str_replace("\\", "\\\\'", $var);
        $var = str_replace("'", "\\'", $var);
        
        return $var;
    }

    private function cypherAttributGet($list, $mode, $str = '') {

        foreach(Conf::$labelParamList->mode as $k => $v){

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

        $traceVarCreate  = str_replace($tag, $cypherVar, $this->cypherLabelParamListCreate);        
        $this->cypherLog = str_replace('{'.$cypherVar.'_createLabelParamList}', $traceVarCreate, $this->cypherLog);

        $traceVarMatch  = str_replace($tag, $cypherVar, $this->cypherLabelParamListMatch);        
        $this->cypherLog = str_replace('{'.$cypherVar.'_matchLabelParamList}', $traceVarMatch, $this->cypherLog);

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
        $this->cypherLabelParamListCreate        = $this->cypherAttributGet(Conf::$labelParamList, 'CREATE');
        $this->cypherLabelParamListMatch         = $this->cypherAttributGet(Conf::$labelParamList, 'MATCH');
        $this->cypherRelationshipParamListCreate = $this->cypherAttributGet(Conf::$cypherRelationshipParamList, 'CREATE');
        $this->cypherRelationshipParamListMatch  = $this->cypherAttributGet(Conf::$cypherRelationshipParamList, 'MATCH');

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
