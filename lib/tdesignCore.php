<?php

Trait TDesignCore {
	
	use TMerge;
	use TTemplate;

	private $attributList = array();
	private $elementList  = array();
	private $labelName    = '';
	private $elementName  = '';
	private $type         = 0;
	
	public function designCoreConstuctInit(){
		
		$this->labelName   = $labelName;
		$this->elementName = $elementName;
		$this->type        = $type;
		
		return true;
	}
	public function designCoreConstuctFinish($render = false){
		
		if($render === true) {
			
			$result = $this->templateRender();
				
			if($result === false) return false;
		}
		return true;
	}
}

?>
