<?php

Trait TDesignCore {

	use TTrace;
	use TTemplate;
	
	private $var       = '';
	private $labelName = '';
	private $name      = '';
	private $json      = '';
	
	public static $nodeList;
	public static $relationshipList;
	
	public function designCoreConstuctInit($name) {
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartparam(__LINE__, __METHOD__, __CLASS__, $name);
		
		self::$relationshipList = new stdClass();
		$var                    = self::VARC;
		$this->var              = $var;
		$this->labelName        = get_class($this);
		$this->name             = $name;
		self::$nodeList         = stdClass();
		self::$nodeList->$var   = Conf::$labelList->$var;
		
		$this->template_init($this->labelName);
		
		return $this->traceEndOK(__LINE__, __METHOD__, __CLASS__);
	}
	public function designCoreConstuctFinish($func, $send = true) {
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartparam(__LINE__, __METHOD__, __CLASS__, $func);
			
		$this->templateHtmlGet();
		
		if($send === true) $this->templateSend();
		
		$this->cypherRelationshipListSet($func);
		$this->cypherTraceLogContent($this);
		
		return $this->traceEndOK(__LINE__, __METHOD__, __CLASS__);
	}
}

?>

