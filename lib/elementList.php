<?php

class ElementList {

	use TDesignCore;

	private function __construct($type, $attributListDefault, $render = false) {

		$this->type = $type;		
		$listVar    = $type.'List';
		$list       = Conf::$export[$listVar];

		foreach($list as $labelName => $elementList){
				
			foreach($elementList as $elementName => $attributList){

				$element = new Element($labelName, $elementName, $type, $this->elementList, $attributListDefault, $attributList, $render);

				if($element === false) return false;				

				$this->elementList[$element->score] = $element;
			}
		}
		rsort($this->elementList);
		
		$result = $this->designCoreConstuctFinish($render);
			
		if($result === false) return false;
	}
}

?>
