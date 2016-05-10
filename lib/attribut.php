<?php

class attribut {

	use TDesignCore;

	private $k;
	private $v;
	private $def;
	private $labelName   = '';
	private $elementName = '';

	public function __construct($labelName, $elementName, $type, $name, $value, $def = '', $render = false) {
		
		$this->traceStart(__LINE__, __METHOD__, __CLASS__);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $labelName);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $elementName);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $type);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $name);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $value);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $def);
		$this->traceStartParam(__LINE__, __METHOD__, __CLASS__, $render);

		$result = $this->designCoreConstuctInit($labelName, $elementName, $type);
		
		$this->traceTestFatal($line, $method, $class, $result);
		
		$this->k   			= $name;
		$this->v   			= $value;
		$this->def 			= $def;
		$this->templateDefaultList['k'] = $this->k;
		$this->templateDefaultList['v'] = $this->def;
		$this->templateValList['k']     = $this->k;
		$this->templateValList['v']     = $this->v;
				
		$result = $this->designCoreConstuctFinish($render);
		
		$this->traceTestFatalEnd($line, $method, $class, $result);
	}
}

?>
