<?php

class Element {

	use TDesignCore;

	public $score = 0;

	public function __construct($labelName, $elementName, $type, $list, $attributListDefault, $attributList, $render = false) {
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $labelName);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $elementName);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $type);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $list);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $attributListDefault);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $attributList);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $render);

		$result = $this->designCoreConstuctInit($labelName, $elementName, $type);
		
		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $result);
		
		$this->score = Score::get($type, $list);
		
		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $this->score);

		$this->attributList = new attributList($labelName, $elementName, $type, $attributListDefault, $attributList, $render);

		$this->traceTestFatal(__LINE__, __METHOD__, __CLASS__, $this->attributList);

		$result = $this->designCoreConstuctFinish($render);
			
		$this->traceTestFatalEnd(__LINE__, __METHOD__, __CLASS__, $result);
	}
}

?>
