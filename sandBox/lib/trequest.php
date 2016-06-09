<?php

trait TRequest {
	
	static function requestVal($tag) {
		
		if(isset($_REQUEST[$tag]) === true && empty($_REQUEST[$tag]) === false && $_REQUEST[$tag] !== false ) {
		
			$val = $_REQUEST[$tag];
			$val = filter_var($val, FILTER_UNSAFE_RAW, FILTER_FLAG_ENCODE_HIGH);
			
			return $val;
		}
		return false;
	}
}

?>