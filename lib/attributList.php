<?php

class attributList {

	use TDesignCore;
	use TMerge;
	use TTemplate;

	public function __construct($labelName, $elementName, $type, $attributListDefault, $attributList = array()) {

		$this->labelName   = $labelName;
		$this->elementName = $elementName;
		$this->type        = $type;
		$attributList      = self::mergeObj(Conf::$export[$attributListDefault], $attributList);

		foreach($attributList as $attributName => $attributValue){
				
			$attribut = new attribut($labelName, $elementName, $type, $attributName, $attributValue);
				
			if($attribut === false) return false;
				
			$result = $attribut->templateCypher();

			if($result === false) return false;
				
			$result = $attribut->templateHtml();
				
			if($result === false) return false;
				
			$this->attributList[$attributName] = $attribut;
		}
		$result = $this->templateRender();
			
		if($result === false) return false;
	}
}

?>