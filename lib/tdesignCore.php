<?php

Trait TDesignCore {
	
	use TTrace;
	use TMerge;
	use TTemplate;
	
	private $attributList = array();
	private $elementList  = array();
	private $labelName    = '';
	private $elementName  = '';
	private $type         = 0;
	
	public function designCoreConstuctInit($labelName, $elementName, $type){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__, get_class($this));
		$this->traceStartparam(__LINE__, __METHOD__, __CLASS__, $labelName);
		$this->traceStartparam( __LINE__, __METHOD__, __CLASS__, $elementName);
		$this->traceStartparam(__LINE__, __METHOD__, __CLASS__, $type);
		
		$this->labelName   = $labelName;
		$this->elementName = $elementName;
		$this->type        = $type;
		
		return $this->trace(Trace::CODE_END_OK, __LINE__, __METHOD__, __CLASS__, get_class($this));
	}
	public function designCoreConstuctFinish($render = false){
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__, get_class($this));
		$this->traceStartparam(__LINE__, __METHOD__, __CLASS__, $render);
		
		$result = true;
		
		if($render === true) {
			
			$result = $this->templateRender();
		}
		return $this->traceTestFatalEnd(__LINE__, __METHOD__, __CLASS__, get_class($this), $result);
	}
}

?>

