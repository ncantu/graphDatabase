<?php

class Cypher {
	
	CONST CREATE_MODE         = 'onCreateSetList';
	CONST MATCH_MODE          = 'onMatchSetList';
	CONST LABEL_PREFIX        = 'label';
	CONST RELATIONSHIP_PREFIX = 'relationship';
	CONST SEP_K_V             = ' = ';
	CONST SEP_K               = ' , ';
	CONST LIST_C              = '';
	CONST PARAM_LIST_SUFFIX   = 'ParamList';
	CONST EOL                 = ' ';
	
	public static $database   = false;
	
	public static function send($cypher) {
		
		if(is_object(self::$database) === false) return false;

		$post = '
		{
			"statements" : [ {
			"statement" : "'.$cypher.'"
			} ]
		}';
		
		$process = curl_init('http://'.self::$database->host.':'.self::$database->port.self::$database->url);
	
		curl_setopt($process, CURLOPT_HTTPHEADER, array('Content-Type: application/json', 'Accept: application/json; charset=UTF-8'));
		curl_setopt($process, CURLOPT_HEADER, 1);
		curl_setopt($process, CURLOPT_USERPWD, self::$database->username.':'.self::$database->password);
		curl_setopt($process, CURLOPT_TIMEOUT, 30);
		curl_setopt($process, CURLOPT_POST, 1);
		curl_setopt($process, CURLOPT_POSTFIELDS, $post);
		curl_setopt($process, CURLOPT_RETURNTRANSFER, TRUE);
		
		$return = curl_exec($process);
		
		echo $return;
		
		curl_close($process);
	}
	
	public static function cleanAll() {
		
		$cypher = 'MATCH (n) DETACH DELETE n';
		
		return self::send($cypher);
	}
}

?>