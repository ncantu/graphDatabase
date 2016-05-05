<?php

trait TRequest {
	
	static function requestVal($tag) {
		
		if(isset($_REQUEST[$tag]) === true && empty($_REQUEST[$tag]) === false && $_REQUEST[$tag] !== false ) {
		
			$mockValue = $_REQUEST[$tag];
			$mockValue = filter_var($mockValue, FILTER_UNSAFE_RAW, FILTER_FLAG_ENCODE_HIGH);
			
			return $mockValue;
		}
		return false;
	}
}

?>