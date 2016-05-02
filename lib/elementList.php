<?php

class ElementList {

	use TDesignCore;

	public function __construct($type, $attributListDefault, $render = false) {
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $type);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $attributListDefault);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $render);

		$this->type = $type;
		$listVar    = $type.'List';
		$list       = Conf::$$listVar;

		foreach($list as $labelName => $elementList){
				
			foreach($elementList as $elementName => $attributList){

				$element = new Element($labelName, $elementName, $type, $this->elementList, $attributListDefault, $attributList, $render);

				$this->traceTestFatalEnd(__LINE__, __METHOD__, __CLASS__, $element);

				$this->elementList[$element->score] = $element;
			}
		}
		rsort($this->elementList);
		
		$result = $this->designCoreConstuctFinish($render);
			
		$this->traceTestFatalEnd(__LINE__, __METHOD__, __CLASS__, $result);
	}
}

?>
