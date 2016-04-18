<?php

trait TMerge{

	private static function mergeObj($default, $vals){
	
		if(empty($vals) === true) return false;
		
		foreach($default as $k => $v){
	
			if(is_array($vals) === true      && isset($vals[$k]) === false) $vals[$k] = $v;
			elseif(is_object($vals) === true && isset($vals->$k) === false) $vals->$k = $v;
		}
		return $vals;
	}
}
