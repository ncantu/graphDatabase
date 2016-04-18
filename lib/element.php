<?php

class Element {

	use TDesignCore;
	use TTemplate;

	public $score = 0;

	public function __construct($labelName, $elementName, $type, $list, $attributListDefault, $attributList) {

		$this->labelName   = $labelName;
		$this->elementName = $elementName;
		$this->type        = $type;
		$this->score       = $this->scoreGet($type, $list);

		if($this->score === false) return false;

		$this->attributList = new attributList($labelName, $elementName, $type, $attributListDefault, $attributList);

		if($this->attributList === false) return false;
	}

	private function scoreGet($type, $list, $scoreFuncSuffix = 'ScoreGet'){

		$scoreGetFunc = $type.$scoreFuncSuffix;

		return Score::$scoreGetFunc($list);
	}
}

?>
