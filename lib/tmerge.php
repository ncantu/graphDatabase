<?php

trait TMerge{

	private static function mergeObj($default, $vals){
	
		foreach($default as $k => $v){
	
			if(isset($vals[$k]) === false) $vals[$k] = $v;
		}
		return $vals;
	}
}
