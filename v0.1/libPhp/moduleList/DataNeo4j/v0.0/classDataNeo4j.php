<?php

class DataNeo4j {

    use TraitModule;

    CONST CREATE_MODE         = 'onCreateSetList';
    CONST MATCH_MODE          = 'onMatchSetList';
    CONST LABEL_PREFIX        = 'label';
    CONST RELATIONSHIP_PREFIX = 'relationship';
    CONST SEP_K_V             = ' = ';
    CONST SEP_K               = ' , ';
    CONST LIST_C              = '';
    CONST PARAM_LIST_SUFFIX   = 'ParamList';
    CONST EOL                 = ' ';
    CONST LANGUAGE            = 'DataNeo4j';

    public function connect($cypher) {

            if(is_object(self::$conf) === false) return false;

            $post = '
		{
			"statements" : [ {
			"statement" : "'.$cypher.'"
			} ]
		}';

            $process = curl_init('http://'.self::$conf->host.':'.self::$conf->port.self::$database->url);

            curl_setopt($process, CURLOPT_HTTPHEADER, array('Content-Type: application/json', 'Accept: application/json; charset=UTF-8'));
            curl_setopt($process, CURLOPT_HEADER, 1);
            curl_setopt($process, CURLOPT_USERPWD, self::$conf->username.':'.self::$conf->password);
            curl_setopt($process, CURLOPT_TIMEOUT, 30);
            curl_setopt($process, CURLOPT_POST, 1);
            curl_setopt($process, CURLOPT_POSTFIELDS, $post);
            curl_setopt($process, CURLOPT_RETURNTRANSFER, TRUE);

            $return = curl_exec($process);

            curl_close($process);

            return $return;
    }

    public function attribut($attributObj) {

        return $code;
    }

    public function method($methodObj) {

        return $code;
    }

    public function class($classObj) {

        return $code;
    }

    public function microService($microServiceObj) {

        return $code;
    }
}

?>