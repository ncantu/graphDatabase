<?php

class ElementList {

	use TDesignCore;
	use TTemplate;

	private function __construct($type, $attributListDefault) {

		$listVar = $type.'List';
		$list    = Conf::$export[$listVar];

		foreach($list as $labelName => $elementList){
				
			foreach($elementList as $elementName => $attributList){

				$postIt = new Element($labelName, $elementName, $type, $this->list, $attributListDefault, $attributList);

				if($postIt === false) return false;

				$this->elementList[$postIt->score] = $postIt;
			}
		}
		rsort($this->elementList);

		$result = $this->templateRender();
			
		if($result === false) return false;
	}

	public function actionPostitListCreate($type = 'action', $attributListDefault = 'relationshipParamList') {

		return new ElementList($type, $attributListDefault);
	}
}

?>
