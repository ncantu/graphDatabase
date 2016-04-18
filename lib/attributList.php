<?php

class attributList {

	use TDesignCore;

	public function __construct($labelName, $elementName, $type, $attributListDefault, $attributList = array(), $render = false) {

		$result = $this->designCoreConstuctInit();
		
		if($result === false) return false;
		
		$attributList = self::mergeObj(Conf::$export[$attributListDefault], $attributList);
		
		if($attributList === false) return false;

		foreach($attributList as $attributName => $attributValue){
				
			$attribut = new attribut($labelName, $elementName, $type, $attributName, $attributValue, $render);
				
			if($attribut === false) return false;
				
			$this->attributList[$attributName] = $attribut;
		}				
		$result = $this->designCoreConstuctFinish($render);
			
		if($result === false) return false;
	}
}

?>