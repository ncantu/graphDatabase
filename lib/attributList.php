<?php

class attributList {

	use TDesignCore;

	public function __construct($labelName, $elementName, $type, $attributListDefault, $attributList = array(), $render = false) {
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $labelName);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $elementName);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $type);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $attributListDefault);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $attributList);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $render);

		$result = $this->designCoreConstuctInit($labelName, $elementName, $type);
		
		$this->traceTestFatal($line, $method, $class, $result);
		
		$attributList = self::mergeObj(Conf::$$attributListDefault, $attributList);
		
		$this->traceTestFatal($line, $method, $class, $attributList);
		
		if(is_array($attributList) === false || is_object($attributList) === false) {
			
			$this->traceFatal($line, $method, $class, $attributList);
		}

		foreach($attributList as $attributName => $attributValue){
				
			$attribut = new attribut($labelName, $elementName, $type, $attributName, $attributValue, $render);
				
			$this->traceTestFatal($line, $method, $class, $attribut);
				
			$this->attributList[$attributName] = $attribut;
		}
		$result = $this->designCoreConstuctFinish($render);
			
		$this->traceTestFatalEnd($line, $method, $class, $result);
	}
}

?>