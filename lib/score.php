<?php

class Score {
	
	CONST SCORE_FUNCTION_SUFFIX = 'ScoreGet';

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
	
	private static function get($type, $list, $scoreFunctionSuffix = self::SCORE_FUNCTION_SUFFIX){
	
		$scoreGetFunc = $type.$scoreFunctionSuffix;
	
		return Score::$scoreGetFunc($list);
	}
}

?>
