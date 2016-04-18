<?php

class Element {

	use TDesignCore;

	public $score = 0;

	public function __construct($labelName, $elementName, $type, $list, $attributListDefault, $attributList, $render = false) {

		$result = $this->designCoreConstuctInit($labelName, $elementName, $type);
		
		if($result === false) return false;
		
		$this->score = Score::get($type, $list);
		
		if($this->score === false) return false;

		$this->attributList = new attributList($labelName, $elementName, $type, $attributListDefault, $attributList, $render);

		if($this->attributList === false) return false;

		$result = $this->designCoreConstuctFinish($render);
			
		if($result === false) return false;
	}
}

?>
