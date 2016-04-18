<?php

class Score {

	static private function scoreGet($list){
	
		$score = count($list);
	
		while(isset($list[$score]) === true) $score++;
	
		return $score;
	}
	
	public static function actionScoreGet($list){
	
		return self::scoreGet($list);
	}
	
	public static function emotionScoreGet($list){
	
		return self::scoreGet($list);
	}
	
	public static function labelScoreGet($list){
	
		return self::scoreGet($list);
	}
}

?>
