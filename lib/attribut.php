<?php

class attribut {

	use TDesignCore;

	private $k;
	private $v;
	private $def;
	private $labelName   = '';
	private $elementName = '';

	public function __construct($labelName, $elementName, $type, $name, $value, $def = '', $render = false) {

		$result = $this->designCoreConstuctInit($labelName, $elementName, $type);
		
		if($result === false) return false;
		
		$this->k   						= $name;
		$this->v   						= $value;
		$this->def 						= $def;
		$this->templateDefaultList['k'] = $this->k;
		$this->templateDefaultList['v'] = $this->def;
		$this->templateValList['k']     = $this->k;
		$this->templateValList['v']     = $this->v;
				
		$result = $this->designCoreConstuctFinish($render);
		
		if($result === false) return false;
	}
}

?>
